<?php

namespace App\Http\Controllers;

use App\Models\Batch;
use App\Models\BatchSession;
use App\Models\Teacher;
use App\Models\User;
use App\Models\Student;
use App\Models\ClassMaster;
use App\Models\AssignedHomeWork;
use App\Models\OrderSessionMap;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class OperationController extends Controller
{
    public function index()
    {
        dd("this is operation");
    }
    public function oprationDashboard()
    {
        return view('operation.dashboard');
    }
    public function teacherManagement()
    {
        // $data=DB::table('users AS u')
        //             ->join('batches AS b', 'b.created_by', '=', 'u.id')
        //             ->join('batch_session AS bs', 'bs.batch_id', '=', 'b.id')
        //             ->where('bs.start_date_time', "2021-06-25 16:00:00")
        //             ->get();
        // dd();
        $data=User::where('role', 'admin')->orWhere('role', 'teacher')->get();
        // dd($data);
        $sessions=BatchSession::whereDate('start_date_time', Carbon::today())->get();
        // dd($sessions);
        return view('operation.teacher-management');
    }
    public function batchListGet()
    {
        return view('operation.batchlist');
    }
    public function batchList(Request $request)
    {
        $sessions=explode("/", $request->session_arr);
        $session=[];
        foreach ($sessions as $session_name) {
            $batch=BatchSession::where('id', $session_name)->get();
            array_push($session, $batch);
        }
        // dd($session);
        return view('operation.batchlist', compact('session'));
    }
    public function purchaseSession($id)
    {
        $students=User::where('role', 'student')->get();
        $classes=ClassMaster::all();
        $sessions=BatchSession::where('batch_id', $id)->get();
        $batch = Batch::find($id);
       
        return view('operation.purchase-session', compact('sessions', 'students', 'batch', 'classes'));
    }
    public function studentList(Request $request)
    {
        $sessionId=$request->sessionId;
        $studentList= DB::table('order_session_maps AS osm')
        ->join('order_payments AS op', 'osm.order_id', '=', 'op.id')
        ->join('users', 'student_id', '=', 'users.id')
        ->where('osm.session_id', $sessionId)
        ->get();
        return view('operation.modal', compact('studentList'));
    }
    public function studentPaidDetails()
    {
        // return view('operation.operation-paid-details');
    }
    public function getSeesionList(Request $request)
    {
        $selectedDate=$request->selectedDate;
        $sessions=BatchSession::whereDate('start_date_time', Carbon::parse($selectedDate))->get();
        // $data = $data->filter(function ($value, $key) use ($sessions) {
        //     $returnValue = false;
        //     foreach ($sessions as $session) {
        //         return $session->batch->teacher->name == $value->name;
        //     }
        //     return $returnValue;
        // });
        $data=User::where('role', 'teacher')->get();
         // $session
        return view('operation.datatable', compact('sessions', 'data'));
    }
    public function getStudentList(Request $request)
    {
        $classId=$request->classId;
        // dd($classId);
        if($request->classId=="all")
        {
            $students=User::where('role', '=', 'student')->get();
        }
        else
        {
            $students=DB::table('users AS u')
            ->join('students AS s', 'u.id','=','s.user_id')
            ->where('role', '=', 'student')
            ->where('s.class_master_id', '=', $classId)
            ->select('u.*')
            ->get();
            
            // dd($students);
            // $newstudents=Student::where('class_master_id','=', $request->classId)->get();
        }
        // return view('operation.studentlist', compact('students'));
        return response($students);
    }
    //enrolled
    public function enrolledStudent($id, Request $request)
    {
        $session = BatchSession::find($id);
        $batch_id=$session->batch->id;
        $enrolled_students=OrderSessionMap::where('batch_id', $batch_id)->get();
        return view('operation.enrolled-student', compact('session', 'enrolled_students'));
    }
    
    public function getScoreSheet($session_id)
    {
            $homeworks=AssignedHomeWork::where('session_id', $session_id)->get();
            foreach($homeworks as $homework)
            {
                $homework= $homework->studentlist(); 
            }
            return $homework;
    }
    public function scoreSheet()
    {
        $this->getScoreSheet(371);
    }
    
}
