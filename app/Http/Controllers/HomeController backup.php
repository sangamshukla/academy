<?php

namespace App\Http\Controllers;

use App\Models\Batch;
use App\Models\OrderItems;
use App\Models\OrderPayment;
use App\Models\Student;
use App\Models\Transaction;
use Carbon\Carbon;
// use GuzzleHttp\Psr7\Request;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use SebastianBergmann\CodeCoverage\Report\Html\Dashboard;

class HomeControllerBackup extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
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
            $student = Student::where('user_id', auth()->user()->id)->first();
            // dd($student);
            $students = Batch::where('class_master_id', $student->class_master_id)->latest()->take(8)->get();
            // buy now || orders table
            // if(Orders::where('user_id', auth()->user()->id)->exists()){
            // return redirect('/session-list');
            // }
            $id = auth()->user()->id;
            // dd($id);
            $status = DB::table('transactions')
                ->join('order_payments', 'transactions.order_id', '=', 'order_payments.id')
                ->select('transactions.*', 'order_payments.*')
                ->where('order_payments.student_id', $id)
                ->get();
            // dd($status);

            $courses = OrderPayment::where('student_id', auth()->user()->id)->pluck('id');
            $couseBatches = OrderItems::whereIn('order_payment_id', $courses)->pluck('batch_id');
            $batches = Batch::whereIn('id', $couseBatches)->latest()->get();
            // dd($batches);
            $today = Batch::whereIn('id', $couseBatches)->whereDate('batch_start_date', Carbon::today())->get();
            $tomorrow = Batch::whereIn('id', $couseBatches)->whereDate('batch_start_date', Carbon::tomorrow())->get();
            return view('dashboard.student', compact('students', 'batches', 'today', 'tomorrow', 'courses', 'status'));
        }
    }
    public function sessionList(Request $request)
    {
        $courses = OrderPayment::where('student_id', auth()->user()->id)->pluck('id');
        $couseBatches = OrderItems::whereIn('order_payment_id', $courses)->pluck('batch_id');
        $batches = Batch::whereIn('id', $couseBatches)->latest()->get();
        $today = Batch::whereIn('id', $couseBatches)->whereDate('batch_start_date', Carbon::today())->get();
        $tomorrow = Batch::whereIn('id', $couseBatches)->whereDate('batch_start_date', Carbon::tomorrow())->get();
        return view('dashboard.session-list', compact('batches', 'today', 'tomorrow'));
    }
}
