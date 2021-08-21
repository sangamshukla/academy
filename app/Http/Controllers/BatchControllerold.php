<?php

namespace App\Http\Controllers;

use App\Jobs\MakeZoomMeeting;
use App\Models\Batch;
use App\Models\BatchSession;
use App\Models\BatchTopic;
use App\Models\ClassMaster;
use App\Models\ClassSettings;
use App\Models\Orders;
use App\Models\Subject;
use App\Models\Teacher;
use App\Models\User;
use Carbon\Carbon;
use Database\Seeders\ClassSettings as SeedersClassSettings;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class BatchControllerOld extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $totals = Batch::count();
        $totalprice = Batch::count();
        $totnoofseats = Batch::count();

        $batches = Batch::latest()->get();
        return view('class.index', compact('batches', 'totals', 'totalprice', 'totnoofseats'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // $i = 1;
        $assignteachers = User::all()->where('role', 'teacher');
        // dd($assignteachers);
        $classes = ClassMaster::all();
        $subjects = Subject::all();
        $classsettings = ClassSettings::all();
        return view('class.create', compact('classes', 'subjects', 'assignteachers', 'classsettings'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // dd($request->all());

        if (auth()->user()->role == 'admin') {
            $request->validate([
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
            $request->validate([
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

        if ($request->class_settings != '') {
            $classSettings = ClassSettings::updateOrCreate(['name' => $request->class_settings]);
            $class = $classSettings->id;
        } else {
            $class = $request->class_settings_id;
        }
        $batch = Batch::Create([
            'name' => auth()->user()->role == 'teacher' ? auth()->user()->id : $request->name,
            'batch_price_per_session' => $request->batch_price_per_session,
            'batch_start_date' => $request->batch_start_date,
            'subject_id' => $request->subject_id,
            'class_master_id' => $request->class_master_id,
            'class_settings_id' => $class,
            'duration_per_session' => $request->duration_per_sessions_id,
            'no_of_seats' => $request->no_of_seats,
            'teacher_available_status' => $request->teacher_available_status,
            // 'book_now'=>$request->book_now,
            'status' => $request->status,
            'location' => $request->location,
            'created_by' => auth()->user()->id
        ]);

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
            $index++;
            $name++;
        }

        MakeZoomMeeting::dispatch($batch->id);

        return redirect(route('manage-class'))->with('status', 'Class Added Successfully');

        //  return response()->json(['success'=>'Form is successfully submitted!']);
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
        return view('class.edit', compact('class'));
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
        $class = Batch::updateOrCreate(
            [
                'id' => $request->id
            ],
            [
                'name' => $request->name,
                'batch_price_per_session' => $request->batch_price_per_session,
                'batch_start_date' => $request->batch_start_date,
                'subject_id' => $request->subject_id,
                'class_master_id' => $request->class_master_id,
                // 'class_settings_id'=>$class,
                'duration_per_session' => $request->duration_per_sessions_id,
                'teacher_available_status' => $request->teacher_available_status,
                'created_by' => auth()->user()->id
            ]
        );
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
        return redirect(route('manage-class'))->with('status', 'Class Deleted Successfully');
    }
    public function student(Request $request)
    {
        $batches = Orders::latest()->get();

        return view('class.student', compact('batches'));
    }

    public function studentDetails(Request $request, $id)
    {
        $batch = Batch::find($id);
        // get all batches of the same class
        $allBatches = Batch::where('class_master_id', $batch->class_master_id)
            ->where('id', '!=', $id)->get();
        return view('class.student_details', compact('batch', 'allBatches'));
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
        dd('here');
        // if (!$request->classId) {
        //     $relatedBatches = Batch::whereIn('id', array_keys(session()->get('cart') ?? []))->get();
        //     return view('class.buy_now', compact('relatedBatches'));
        // }
        $product = Batch::find($request->classId);
        $cart = session()->get('cart');
        // if cart is empty then this the first product
        // dd('here');
        if (!$cart) {
            $cart = [
                $request->classId => [
                    "product_id" => $product->id, "quantity" => 1,
                    'price' => $product->batch_price_per_session
                ]
            ];
            session()->put('cart', $cart);
        }
        if (isset($cart[$request->classId])) {
            // $cart[$request->classId]['quantity']++;
            // session()->put('cart', $cart);
            $relatedBatches = Batch::whereIn('id', array_keys(session()->get('cart')))->get();
            return view('class.buy_now', compact('relatedBatches'));
        }
        // if item not exist in cart then add to cart with quantity = 1
        $cart[$request->classId] = [
            "product_id" => $product->id,
            "quantity" => 1,
            'price' => $product->batch_price_per_session
        ];
        session()->put('cart', $cart);
        $relatedBatches = Batch::whereIn('id', array_keys(session()->get('cart')))->get();
        return view('class.buy_now', compact('relatedBatches'));

        //model login
    }
}
