<?php

namespace App\Http\Controllers;

use App\Mail\HomePageContactUsForm;
use App\Models\Batch;
use App\Models\BatchSession;
use App\Models\OrderSessionMap;
use App\Models\ContactMail;
use App\Models\OrderItems;
use App\Models\OrderPayment;
use App\Models\AssignedHomeWork;
use App\Models\AssignedHomeWorkStudent;
use App\Models\Student;
use App\Models\User;
use App\Models\Transaction;
use Carbon\Carbon;
// use GuzzleHttp\Psr7\Request;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use SebastianBergmann\CodeCoverage\Report\Html\Dashboard;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth')->except('contactMailSave', 'aboutUs');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\View\View
     */


    public function index()
    {
        if (auth()->user()->role === 'admin') {
            return redirect('/admin-dashboard');
        } elseif (auth()->user()->role === 'teacher') {
            return redirect('/teacher-dashboard');
        } elseif (auth()->user()->role === 'operation') {
            return redirect('/operation-dashboard');
        } elseif (auth()->user()->role === 'student') {
            return redirect('/student-dashboard');
        }
    }

    public function adminDashboard()
    {
        if (auth()->user()->role === 'admin') {
            return view('dashboard.admin');
        } elseif (auth()->user()->role === 'teacher') {
            return redirect('/teacher-dashboard');
        } elseif (auth()->user()->role === 'operation') {
            return redirect('/operation-dashboard');
        } elseif (auth()->user()->role === 'student') {
            return redirect('/student-dashboard');
        }
    }

    public function teacherDashboard()
    {
        if (auth()->user()->role === 'admin') {
            return redirect('/admin-dashboard');
        } elseif (auth()->user()->role === 'teacher') {
            return view('dashboard.teacher');
        } elseif (auth()->user()->role === 'operation') {
            return redirect('/operation-dashboard');
        } elseif (auth()->user()->role === 'student') {
            return redirect('/student-dashboard');
        }
    }

    public function operationDashboard()
    {
        if (auth()->user()->role === 'admin') {
            return redirect('/admin-dashboard');
        } elseif (auth()->user()->role === 'teacher') {
            return redirect('/teacher-dashboard');
        } elseif (auth()->user()->role === 'operation') {
            return view('dashboard.operation');
        } elseif (auth()->user()->role === 'student') {
            return redirect('/student-dashboard');
        }
    }

    public function studentDashboard(Request $request)
    {
        if (auth()->user()->role === 'admin') {
            return redirect('/admin-dashboard');
        } elseif (auth()->user()->role === 'teacher') {
            return redirect('/teacher-dashboard');
        } elseif (auth()->user()->role === 'operation') {
            return redirect('/operation-dashboard');
        } elseif (auth()->user()->role === 'student') {
            $student = User::where('id', auth()->user()->id)->first();
            // dd($student);
            $students = Batch::where('class_master_id', $student->class_master_id)->latest()->take(8)->get();

            // buy now || orders table
            // if(Orders::where('user_id', auth()->user()->id)->exists()){
            // return redirect('/session-list');
            // }
            $id = auth()->user()->id;
            // dd($id);
            // $status = DB::table('transactions')
            //     ->join('order_payments', 'transactions.order_id', '=', 'order_payments.id')
            //     ->select('transactions.*', 'order_payments.*')
            //     ->where('order_payments.student_id', $id)
            //     ->get();
            $status=OrderPayment::where('student_id', auth()->user()->id)->exists();
            // dd($status);
            $paid_amount = DB::table('order_payments')->where('student_id','=', auth()->user()->id)->sum('paid_amount');
            $total_amount = DB::table('order_payments')->where('student_id','=', auth()->user()->id)->sum('order_amount');
            $due_amount=$total_amount-$paid_amount;




            $courses = OrderPayment::where('student_id', auth()->user()->id)->pluck('id');
            $couseBatches = OrderSessionMap::whereIn('order_id', $courses)->pluck('batch_id');
            $batches = Batch::whereIn('id', $couseBatches)->latest()->get();
            // dd($couseBatches);
            $relatedBatches=Batch::all();
            // $today = Batch::whereIn('id', $couseBatches)->whereDate('batch_start_date', Carbon::today())->get();



            $batchSessionsToday = BatchSession::whereIn('batch_id', $couseBatches)
                ->whereDate('start_date_time', Carbon::today())->pluck('batch_id');
            $today = Batch::whereIn('id', $batchSessionsToday)->get();

            $tomorrow = BatchSession::whereIn('batch_id', $couseBatches)->whereDate('start_date_time', Carbon::tomorrow())->get();
            // $allsessions=BatchSession::whereIn('batch_id', $couseBatches)->latest()->get();
            $allsessions=BatchSession::whereIn('batch_id', $couseBatches)->latest()->paginate(1);

            // dd($allsessions);
            // dd($tomorrow);
            $twos = Batch::whereIn('id', $couseBatches)->latest()->take(2)->get();
            $three = Batch::whereIn('id', $couseBatches)->oldest()->take(3)->get();

            //tomorrow's session
            // $tomorrowSessions=$this->sessionForTomorrow();
            // dump($tomorrowSessions);
            // $twos = Batch::whereIn('id', $couseBatches)->paginate(3);
            $purchased_sessions=count(DB::table('order_session_maps')
            ->join('order_payments', 'order_session_maps.order_id','=','order_payments.id')
            ->where('order_payments.student_id', auth()->user()->id)
            ->get());
            $assigned_homework=count(DB::table('assigned_home_works')
            ->join('assigned_homework_students','assigned_homework_students.assigned_home_work_id','=','assigned_home_works.id')
            ->where('assigned_homework_students.student_id',auth()->user()->id)
            ->get());
            $marks=$this->getScore(auth()->user()->id);
            return view('dashboard.student', compact(
                'students',
                'batches',
                'today',
                'tomorrow',
                'courses',
                'status',
                'twos',
                'three',
                'due_amount',
                'purchased_sessions',
                'assigned_homework',
                'marks',
                'relatedBatches',
                'allsessions'
            ));
        }
    }
    public function sessionList(Request $request)
    {
        $courses = OrderPayment::where('student_id', auth()->user()->id)->pluck('id');
        $couseBatches = OrderItems::whereIn('order_payment_id', $courses)->pluck('batch_id');
        $batches = Batch::whereIn('id', $couseBatches)->latest()->get();
        // find the sessions which are starting today
        $batchSessionsToday = BatchSession::whereIn('batch_id', $couseBatches)
            ->whereDate('start_date_time', Carbon::today())->pluck('batch_id');
        $today = Batch::whereIn('id', $batchSessionsToday)->get();
        $tomorrow = Batch::whereIn('id', $couseBatches)->whereDate('batch_start_date', Carbon::tomorrow())->get();
        $twos = Batch::whereIn('id', $couseBatches)->latest()->take(2)->get();

        $three = Batch::whereIn('id', $couseBatches)->oldest()->take(3)->get();
        return view('dashboard.session-list', compact('batches', 'today', 'tomorrow'));
    }

    public function zoom(Request $request, $id)
    {
        $batch = Batch::find($id);
        return view('dashboard.zoom', compact('batch'));
    }

 public function contactMailSave(Request $request)
    {
        $request->validate([
            'fullname'=>'required',
            'schoolName'=>'required',
            'mobileNumber'=>'required|max:10',
            // 'msg'=>'required',
        ]);
        // dd($request->all());
        // $email = 'admin@wallingtonacademy.co.uk';
        $email = 'alkasingh6feb@gmail.com';

        $contact = ContactMail::Create([
            'fullname' => $request->fullname,
            'schoolName' => $request->schoolName,
            'mobileNumber'=>$request->mobileNumber,
            // 'msg'=>$request->msg,
        ]);
        Mail::to($email)->send(new HomePageContactUsForm(
            $request->schoolName,
            $request->fullname,
            $request->mobileNumber,
            $request->msg,
        ));
        return response()->json(['Data'=> 'Send Mail Successfully']);
    }
      public function aboutUs()
    {
        return view('common.about-us');
    }
    public function getScore($studentId)
    {
        $scores=AssignedHomeWorkStudent::where('student_id', $studentId)->latest('assigned_home_work_id')->take(3)->get();
        return $scores;
    }
    public function sessionForTomorrow()
    {
        dump($this->studentOrders());

    }
    public function studentOrders()
    {
        $orders=OrderPayment::where('student_id', 4)->get();
        return $orders;
    }

}
