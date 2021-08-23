<?php

namespace App\Http\Controllers;

use App\Jobs\MakeZoomMeeting;
use App\Models\Batch;
use App\Models\BatchSession;
use App\Models\BatchTopic;
use App\Models\ClassMaster;
use App\Models\ClassSettings;
use App\Models\Event;
use App\Models\Orders;
use App\Models\OrderSessionMap;
use App\Models\Subject;
use App\Models\Teacher;
use App\Models\Topic;
use App\Models\User;
use Carbon\Carbon;
use Database\Seeders\ClassSettings as SeedersClassSettings;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
// use Illuminate\Pagination\LengthAwarePaginator;


class BatchController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function manageClass()
    {
        $totals = Batch::count();
        $totalprice = Batch::count();
        $totnoofseats = Batch::count();
        // $batches = Batch::latest()->take(8)->get();
        // $batches = Batch::paginate
         $batches = Batch::latest()->paginate(8);
        
        // manage class
        $assignteachers = User::all();
        $classes = ClassMaster::all();
        $subjects = Subject::all();
        $classsettings = ClassSettings::all();
        return view('class.manage-class', compact(
            'batches',
            'totals',
            'totalprice',
            'totnoofseats',
            'classes',
            'subjects',
            'assignteachers',
            'classsettings',
        ));
    }
   

    // public function index()
    // {
    //     $totals = Batch::count();
    //     $totalprice = Batch::count();
    //     $totnoofseats = Batch::count();

    //     $batches = Batch::latest()->get();
    //     return view('class.index', compact('batches', 'totals', 'totalprice', 'totnoofseats'));
    // }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

    // end add class
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $assignteachers = User::where('role', 'teacher')->get();
        $classes = ClassMaster::all();
        $subjects = Subject::all();
        $classsettings = ClassSettings::all();
        // for making manage-classes into same page
        $totals = Batch::count();
        $totalprice = Batch::count();
        $totnoofseats = Batch::count();
        $batches = Batch::latest()->paginate(8);
        return view('class.create', compact(
            'classes',
            'subjects',
            'assignteachers',
            'classsettings',
            'batches',
            'totals',
            'totalprice',
            'totnoofseats'
        ));
    }
    public function store(Request $request)
    {
       
        if (auth()->user()->role == 'admin') {
            $validated=$request->validate([
                'class_settings_id' => 'required',
                'batch_price_per_session' => 'required',
                'batch_start_date' => 'required',
                'name' => 'required',
                'teacher_available_status' => 'required',
                'duration_per_sessions_id' => 'required',
                'class_master_id' => 'required',
                'subject_id' => 'required',
                'topic_id' => 'required',
            ]);
        }
        if (auth()->user()->role == 'teacher') {
            $validated=$request->validate([
                'class_settings_id' => 'required',
                'batch_price_per_session' => 'required',
                'batch_start_date' => 'required',
                'duration_per_sessions_id' => 'required',
                'no_of_seats' => 'required',
                'class_master_id' => 'required',
                'subject_id' => 'required',
                'topic_id' => 'required',
            ]);
        }
        if (auth()->user()->role == 'operation') {
            $validated=$request->validate([
                'class_settings_id' => 'required',
                'batch_price_per_session' => 'required',
                'batch_start_date' => 'required',
                'name' => 'required',
                'teacher_available_status' => 'required',
                'duration_per_sessions_id' => 'required',
                'class_master_id' => 'required',
                'subject_id' => 'required',
                'topic_id' => 'required',
            ]);
        }

        if ($request->class_settings != '') {
            $classSettings = ClassSettings::updateOrCreate(['name' => $request->class_settings]);
            $class = $classSettings->id;
        } else {
            $class = $request->class_settings_id;
        }
        if($validated)
        {
        if (auth()->user()->role == 'teacher') {
            $batch = Batch::Create([
                'name' =>auth()->user()->id,
                'batch_price_per_session' => $request->batch_price_per_session,
                'batch_start_date' => $request->batch_start_date,
                'batch_end_date' => $request->batch_end_date,
                'subject_id' => $request->subject_id,
                'class_master_id' => $request->class_master_id,
                'class_settings_id' => $class,
                'duration_per_session' => $request->duration_per_sessions_id,
                'no_of_seats' => $request->no_of_seats,
                'teacher_available_status' => $request->teacher_available_status,
                // 'book_now'=>$request->book_now,
                'status' => $request->status,
                'location' => $request->location,
                'sell_each_session' => $request->sell_each_session,
                'created_by' => auth()->user()->id
            ]);
        } else {
            $batch = Batch::Create([
                'name' => $request->name,
                'batch_price_per_session' => $request->batch_price_per_session,
                'batch_start_date' => $request->batch_start_date,
                'batch_end_date' => $request->batch_end_date,
                'subject_id' => $request->subject_id,
                'class_master_id' => $request->class_master_id,
                'class_settings_id' => $class,
                'duration_per_session' => $request->duration_per_sessions_id,
                'no_of_seats' => $request->no_of_seats,
                'teacher_available_status' => $request->teacher_available_status,
                // 'book_now'=>$request->book_now,
                'status' => $request->status,
                'location' => $request->location,
                'sell_each_session' => $request->sell_each_session,
                'created_by' => $request->teacher_name
            ]);
        }
        

        $index = 0;
        $name = 1;
        foreach ($request->session_name as $session_name) {
            $d = $request->session_start_date[$index];
            $comment = $request->comment[$index];
            $batchSession = BatchSession::create([
                'batch_id' => $batch->id ?? '1',
                'name' => $session_name,
                'start_date_time' => $d,
                'comment' => $comment
            ]);
            BatchTopic::create([
                'batch_session_id' => $batchSession->id,
                'topic_id' => $request->topic_id[$index]
            ]);

            // make event
            $topicname = Topic::find($request->topic_id[$index]);
            Event::create([
                'batch_id' => $batch->id,
                'title' => $d . '' . $batch->classSettings->name . ' ' . $session_name . ' ' . $topicname->name . '',
                'start' => Carbon::parse($d)->format('Y-m-d h:i:s'),
                'end' => Carbon::parse($d)->format('Y-m-d h:i:s'),
            ]);
            $index++;
            $name++;
        }
            
        MakeZoomMeeting::dispatch($batch->id);
        session()->flash('status', 'Class Added Successfully');
        // return redirect(route('manage-classes'))->with('status', 'Class Added Successfully');
        return response()->json(['data'=>'Class Added Successfully']);
    }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Batch  $batch
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request, $id)
    {
        $batch = Batch::find($id);
        return view('class.show', compact('batch'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Batch  $batch
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $class = Batch::find($id);
        $assignteachers = User::all();
        $classes = ClassMaster::all();
        $subjects = Subject::all();
        $classsettings = ClassSettings::all();
        $batches = Batch::latest()->take(8)->get();
        return view('class.edit', compact('class', 'batches', 'classes', 'subjects', 'assignteachers', 'classsettings'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Batch  $batch
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Batch $batch)
    {
        $batch = Batch::find($request->id);
        $class = Batch::updateOrCreate(
            [
                'id' => $request->id
            ],
            [
                'name' => $request->name,
                'batch_price_per_session' => $request->batch_price_per_session,
                'batch_start_date' => $request->batch_start_date,
                'batch_end_date' => $request->batch_end_date,
                'subject_id' => $request->subject_id,
                'class_master_id' => $request->class_master_id,
                // 'class_settings_id' => $class,
                'duration_per_session' => $request->duration_per_sessions_id,
                'no_of_seats' => $request->no_of_seats,
                'teacher_available_status' => $request->teacher_available_status,
                // 'book_now'=>$request->book_now,
                'status' => $request->status,
                'location' => $request->location,
                'sell_each_session' => $request->sell_each_session,
                'created_by' => auth()->user()->id
            ]
        );
        $index = 0;
        $name = 1;
        foreach ($request->session_name as $session_name) {
            $d = $request->session_start_date[$index];
            $comment = $request->comment[$index];
            $batchSession = BatchSession::create([
                'batch_id' => $batch->id ?? '1',
                'name' => $session_name,
                'start_date_time' => $d,
                'comment' => $comment
            ]);
            BatchTopic::create([
                'batch_session_id' => $batchSession->id,
                'topic_id' => $request->topic_id['Session-' . $name]
            ]);

            // make event
            $topicname = Topic::find($request->topic_id['Session-' . $name]);
            Event::create([
                'batch_id' => $batch->id,
                'title' => $d . '' . $batch->classSettings->name . ' ' . $session_name . ' ' . $topicname->name . '',
                'start' => Carbon::parse($d)->format('Y-m-d'),
                'end' => Carbon::parse($d)->format('Y-m-d'),
            ]);
            $index++;
            $name++;
        }
        return redirect(route('manage-classnew'))->with('status', 'Class Updated Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Batch  $batch
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        $class = Batch::find($id);
        $class->delete();
        return redirect(route('manage-classnew'))->with('status', 'Class Deleted Successfully');
    }
    public function student(Request $request)
    {
        $batches = Orders::latest()->get();

        return view('class.student', compact('batches'));
    }

    public function studentDetails(Request $request, $id)
    {
        if(isset($id))
        {
                   $batch = Batch::find($id);
        // dd($batch);
        $allBatches = Batch::where('class_master_id', $batch->class_master_id)
            ->where('id', '!=', $id)
            // session end date
            ->whereDate('batch_end_date', '>=', Carbon::today())
            ->get();
        return view('class.student_details', compact('batch', 'allBatches'));
        }
        else
        {
            return back()->withMessage('Batch Not found');
        }
 
    }
    public function availableCourses(Request $request)
    {
        $batches = Batch::latest()->get();
        return view('courses.available_courses', compact('batches'));
    }
    public function bookNow(Request $request)
    {
        Orders::updateOrCreate([
            'batch_id' => $request->batch_id,
            'student_id' => auth()->user()->id
        ], [
            'order_id' => mt_rand(111111, 999999)
        ]);
        return redirect('/student')->with('success', 'Class Booked Successfully');
    }
    

    public function buyNow(Request $request)
    {
        if (!$request->classId) {
            $totalPrice = 0;
            $relatedBatches = Batch::whereIn('id', array_keys(session()->get('cart') ?? []))->get();
            foreach (session('cart') as $keys => $sess) {
                $totalSessions = count($sess['session_id']);

                $bps = Batch::find($keys)->batch_price_per_session;
                $totalPrice = $totalPrice + ($totalSessions * $bps);
            }
            return view('class.buy_now', compact('relatedBatches', 'totalPrice'));
        }
        $product = Batch::find($request->classId);
        $cart = session()->get('cart');
        if (!$request->session_id) {
            $s = $product->batchSession->where('start_date_time', '>=', \Carbon\Carbon::today())->pluck('id');
            $s = $s->toArray();
            $request->request->add(['session_id' => $s]);
        }
        // dd($request->all());
        // if cart is empty then this the first product
        if (!$cart) {
            $cart = [
                $request->classId => [
                    "product_id" => $product->id, "quantity" => 1,
                    'price' => $product->batch_price_per_session,
                    'session_id' => $request->session_id
                ]
            ];
            session()->put('cart', $cart);
        }
        $totalSessions = 1;
        $totalPrice = 0;
        // dd(session('cart'));
        foreach (session('cart') as $keys => $sess) {
            $totalSessions = count($sess['session_id']);

            $bps = Batch::find($keys)->batch_price_per_session;
            $totalPrice = $totalPrice + ($totalSessions * $bps);
        }
        if (isset($cart[$request->classId])) {
            // $cart[$request->classId]['quantity']++;
            // session()->put('cart', $cart);
            $relatedBatches = Batch::whereIn('id', array_keys(session()->get('cart')))->get();
            return view('class.buy_now', compact('relatedBatches', 'totalPrice'));
        }
        // if item not exist in cart then add to cart with quantity = 1
        $cart[$request->classId] = [
            "product_id" => $product->id,
            "quantity" => 1,
            'session_id' => $request->session_id,
            'price' => $product->batch_price_per_session
        ];
        session()->put('cart', $cart);
        $relatedBatches = Batch::whereIn('id', array_keys(session()->get('cart')))->get();
        return view('class.buy_now', compact('relatedBatches', 'totalPrice'));
    }
      public function is_seat_full($batch_id)
    {
      $session=BatchSession::find($session_id);
      $enrolled_student_count=OrderSessionMap::where('session_id', $session_id)->count();
      if((int)$session->batch->no_of_seats>$enrolled_student_count)
      {
        return true;
      }
      else{
        return false;
      }
    }
    public function check_if_seat_is_full()
    {
      return $this->is_seat_full(10);
    }
    public function adminDashboard()
    {
        return view('class.dashboard');
    }
}
