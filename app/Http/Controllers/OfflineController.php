<?php

namespace App\Http\Controllers;

use App\Models\OfflineEnrolledStudent;
use Illuminate\Support\Facades\DB;
use Yajra\Datatables\Datatables;
use App\Models\Student;
use App\Models\Subject;
use App\Models\SubjectFullMarks;
use App\Models\OfflineScoreSheet;
use App\Models\User;
use App\Models\Week;
use GuzzleHttp\Promise\Create;
use Illuminate\Http\Request;
use PDF;

class OfflineController extends Controller
{
    public function fullMarks(Request $request)
    {
        $subjects = Subject::all();
        $weeks = Week::all();
        $hasValue = false;
        if ($request->has('weekId')) {
            $fullMarks = SubjectFullMarks::where('week_id', $request->weekId)->get();
            if ($fullMarks->count() > 0) {
                $hasValue = true;
            }
        } else {
            $fullMarks = new SubjectFullMarks();
        }
        return view('offlinescoresheet.full-marks', compact('subjects', 'hasValue', 'weeks', 'fullMarks'));
    }
    public function fullMarksSave(Request $request)
    {
        //if()
        // dd($request->all());
        $week = $request->validate([
            'week_id'=>'required',
        ]);

        $i=0;
        foreach ($request->sub_id as $singleSubjectId) {
            if ($request->sub_marks[$i] != '') {
                SubjectFullMarks::updateOrCreate(
                    [
                        'subject_id' => $singleSubjectId,
                        'week_id'=>$request->week_id
                    ],
                    [
                        'full_marks'=>$request->sub_marks[$i]
                    ]
                );
            }
            
            $i++;
        }
        $weeks = Week::all();
        $subjects = Subject::all();
        $students = User::with('student')->orWhere('role', 'student')->paginate(10);
        $weekId = $request->week_id;
        $success = "Saved Successfully!";
        $students->withPath(route('student-enrollment_load', $weekId));
        return view('offlinescoresheet.student-enrollment', compact(
            'weeks',
            'students',
            'subjects',
            'weekId',
            'success'
        ));
        // return redirect(route('student-enrollment', compact('weeks', 'students', 'subjects')))->with('status', 'Created FullMarks Successfully');
    }
   
    
    public function studentEnrollmentSave(Request $request)
    {
        // dd($request->all());
    //  
        foreach ($request->student_id as $row) {
            OfflineEnrolledStudent::updateOrCreate([
                'week_id' => $request->weekId,
                'student_id' => $row
            ]);
        }
        $subject_full_marks = SubjectFullMarks::all();
        $weeks = Week::all();
        $weekId = $request->weekId;
        $subjects = Subject::latest()->paginate(4);
        $students = User::with('student')->orWhere('role', 'student')->get();
        // $students->withPath(route('student-enrollment_load', $weekId));
        $success = "Saved Successfully!";
        return view('offlinescoresheet.student-enrollment', compact('weeks', 'subjects', 'subject_full_marks', 'students', 'weekId', 'success'));
    }
    public function studentEnrollmentEdit($id)
    {
        // $students = OfflineEnrolledStudent::find($id);
        // return view('offlinescoresheet.student-enrollment-edit', compact('students'));
        // $i=0;
        // foreach ($request->sub_id as $singleSubjectId) {
        //     SubjectFullMarks::updateOrCreate(
        //         [
        //             'week_id'=>$request->week_id
        //         ],
        //         [
        //             'subject_id' => $singleSubjectId,
        //             'full_marks'=>$request->sub_marks[$i]
        //         ]
        //     );
        //     $i++;
        // }
        // // $weeks = Week::all();
        // $subjects = Subject::all();
        // $students = User::with('student')->orWhere('role', 'student')->get();
        // return view('offlinescoresheet.student-enrollment', compact('weeks', 'students', 'subjects'));
    }
    public function studentEnrollmentUpdate(Request $request, $id)
    {
        // dd($request->all());
        foreach ($request->student_id as $row) {
            OfflineEnrolledStudent::updateOrCreate([
                'week_id' => $request->weekId,
                'student_id' => $row
            ]);
        }
        $weeks = Week::all();
        $subjects = Subject::latest()->paginate(4);
        return view('offlinescoresheet.student-enrollment-edit', compact('weeks', 'subjects'));
        $subjects = Subject::all();
        return redirect('offline-scoresheet', compact('weeks', 'subjects'));
    }
    public function adminDashboard()
    {
        return view('offlinescoresheet.dashboard');
    }
    public function offline_scoresheet(Request $request, $id)
    {

        // dd($request->all());
        // dd($request->session()->has('subjects'));
        $week_id=$id;
        $subject_full_marks=SubjectFullMarks::where('week_id', $week_id)->sortable()->get();
        // dd($subject_full_marks);
        $students=OfflineEnrolledStudent::where('week_id', $week_id)->sortable()->get();

        // dd($students);
        // dd($marks);
        return view('offlinescoresheet.scoresheetmarks', compact('subject_full_marks', 'students', 'week_id'));
    }
    public function offline_scoresheet_pdf($student_id, $week_id)
    {
        // $week_id=2;
        // $weeks=OfflineEnrolledStudent::where('week_id', $week_id)->where('student_id', $student_id)->get();
        // $scores=OfflineScoreSheet::where('student_id', $student_id)->where('week_id', 2)->get();
        // $avg_weekly_score=OfflineScoreSheet::select('obtained_marks')->where('week_id', 2)->avg('obtained_marks');
        // return view('offlinescoresheet.scoresheetpdf', compact('scores', 'weeks', 'avg_weekly_score'));
        $name=User::find($student_id)->name;
        $class_highest=OfflineScoreSheet::groupBy('student_id')->having('week_id', $week_id)->get();
        dd($class_highest);
        $class_lowest=OfflineScoreSheet::where('week_id', $week_id)->min('obtained_marks');
        $class_avg=OfflineScoreSheet::where('week_id', $week_id)->avg('obtained_marks');
        $student_obtained_marks=OfflineScoreSheet::where('week_id', $week_id)->where('student_id', $student_id);
        // dd($class_highest);
        return view('offlinescoresheet.scoresheetpdf', compact('name','class_highest', 'class_lowest', 'class_avg', 'student_obtained_marks'));
    }
    public function new_offline_scoresheet_pdf($student_id, $week_id)
    {
        // $week_id=2;
        // $weeks=OfflineEnrolledStudent::where('week_id', $week_id)->where('student_id', $student_id)->get();
        // $scores=OfflineScoreSheet::where('student_id', $student_id)->where('week_id', 2)->get();
        // $avg_weekly_score=OfflineScoreSheet::select('obtained_marks')->where('week_id', 2)->avg('obtained_marks');
        // return view('offlinescoresheet.scoresheetpdf', compact('scores', 'weeks', 'avg_weekly_score'));
        $subject_full_marks=SubjectFullMarks::where('week_id', $week_id)->get();
      
        $subject_full_mark_id=OfflineScoreSheet::where('week_id', $week_id)->where('student_id', $student_id)->get();
        $name=User::find($student_id)->name;
        // $class_highest=OfflineScoreSheet::groupBy('student_id')->get();
        $week=Week::find($week_id);
        $class_lowest=OfflineScoreSheet::where('week_id', $week_id)->min('obtained_marks');
        $class_avg=OfflineScoreSheet::where('week_id', $week_id)->avg('obtained_marks');
        $student_obtained_marks=OfflineScoreSheet::where('week_id', $week_id)->where('student_id', $student_id)->get();
        // dd($student_obtained_marks);
        // dd($class_highest);

        return view('offlinescoresheet.newscoresheetpdf', compact( 'week','name', 'class_lowest', 'class_avg', 'student_obtained_marks', 'student_id', 'week_id', 'subject_full_marks'));
    }

    public function studentEnrollMent(Request $request, $weekId)
    {
        $weeks = Week::all();
        $subjects = Subject::all();
        $students = User::with('student')->orWhere('role', 'student')->paginate(10);
        if ($request->student_name) {
            $students = User::with('student')->orWhere('role', 'student')
                ->where('name', 'like', '%'.$request->student_name.'%')
                ->paginate(10);
        }
        $students->withPath(route('student-enrollment_load', $weekId));
        $success = "Saved Successfully!";
        return view('offlinescoresheet.student-enrollment', compact(
            'weeks',
            'students',
            'subjects',
            'weekId',
            'success'
        ));
    }
    public function get_student()
    {
        
        $users=User::where('role', 'student')->get();
        return Datatables::of($users)
                                ->addColumn('checkbox', function ($user) {
                                    $weekId=3;
                                    $enrolled=$this->is_enrolled($user->id, $weekId);
                                    if($enrolled)
                                    {
                                      $status="checked";
                                    }
                                    else {
                                      $status="";
                                    }
                                    return '<input type="checkbox" value="'.$user->id. '" name="student_id[]" '.$status.'/>';
                                })
                                ->addColumn('email', function ($user) {
                                    return $user->student->classmaster->name??'none';
                                })
                        ->make(true);
    }
    public function submit_score(Request $request)
    {
        foreach ($request->scoresheet as $key => $value) {
            foreach ($value as $newkey => $newvalue) {
                OfflineScoreSheet::create([
                    'subject_full_mark_id'=>$newkey,
                    'obtained_marks'=>$newvalue,
                    'student_id'=>$key,
                    'week_id'=>$request->week_id
                ]);
            }
        }
        return redirect()->back();
    }
    public static function is_mark_submitted($student_id, $subject_full_mark_id)
    {
        $submitted=OfflineScoreSheet::where('student_id', $student_id)->where('subject_full_mark_id', $subject_full_mark_id)->exists();
        return $submitted;
    }
    public static function obtained_mark($student_id, $subject_full_mark_id)
    {
        $obtained_mark=OfflineScoreSheet::where('student_id', $student_id)->where('subject_full_mark_id', $subject_full_mark_id)->first();
            return $obtained_mark;
    }
    public static function is_enrolled($student_id, $week_id)
    {
        return OfflineEnrolledStudent::where('student_id', $student_id)->where('week_id', $week_id)->exists();
    }
    public function pdf($student_id, $week_id)
    {
        $name=User::find($student_id)->name;
        $class_highest=OfflineScoreSheet::groupBy('student_id')->where('week_id', $week_id)->max('obtained_marks');
        // dd($class_highest);
        $class_lowest=OfflineScoreSheet::where('week_id', $week_id)->min('obtained_marks');
        $class_avg=OfflineScoreSheet::where('week_id', $week_id)->avg('obtained_marks');
        $student_obtained_marks=OfflineScoreSheet::where('week_id', $week_id)->where('student_id', $student_id)->find($student_id);
        $week=Week::find($week_id);
        $data=[
            'class_lowest'=>$class_lowest,
            'name'=>$name,
            'student_id'=>$student_id,
            'class_avg'=>$class_avg,
            'week_id'=>$week_id,
            'class_highest'=>$class_highest,
            'student_obtained_marks'=>$student_obtained_marks,
            'week'=>$week,
        ];
        $pdf = PDF::loadView('offlinescoresheet.scoresheetpdf', $data);
        return $pdf->download('scoresheet for '.$name.'.pdf');
    }
    public static function get_subject_highest_marks($week_id, $subject_id)
    {
        $class_highest_marks=DB::table('subject_full_marks AS sfm')
        ->join('offline_score_sheets AS oss', 'oss.subject_full_mark_id','=','sfm.id')
        ->where('sfm.week_id', $week_id)
        ->where('sfm.subject_id', $subject_id)
        ->max('obtained_marks');
        return $class_highest_marks;
    }
    public static function get_subject_lowest_marks($week_id, $subject_id)
    {
        $class_lowest_marks=DB::table('subject_full_marks AS sfm')
        ->join('offline_score_sheets AS oss', 'oss.subject_full_mark_id','=','sfm.id')
        ->where('sfm.week_id', $week_id)
        ->where('sfm.subject_id', $subject_id)
        ->min('obtained_marks');
        return $class_lowest_marks;
    }
    public static function get_subject_average_marks($week_id, $subject_id)
    {
        $class_avg_marks=DB::table('subject_full_marks AS sfm')
        ->join('offline_score_sheets AS oss', 'oss.subject_full_mark_id','=','sfm.id')
        ->where('sfm.week_id', $week_id)
        ->where('sfm.subject_id', $subject_id)
        ->avg('obtained_marks');
        return $class_avg_marks;
    }
    public static function get_student_marks($week_id, $subject_id, $student_id)
    {
        $student_marks=DB::table('subject_full_marks AS sfm')
        ->join('offline_score_sheets AS oss', 'oss.subject_full_mark_id','=','sfm.id')
        ->where('sfm.week_id', $week_id)
        ->where('sfm.subject_id', $subject_id)
        ->where('oss.student_id', $student_id)
        ->first();
       
            return $student_marks;
    }
    public static function get_student_percentage($week_id, $subject_id, $student_id)
    {
        $student_perc=DB::table('subject_full_marks AS sfm')
        ->join('offline_score_sheets AS oss', 'oss.subject_full_mark_id','=','sfm.id')
        ->where('sfm.week_id', $week_id)
        ->where('sfm.subject_id', $subject_id)
        ->where('oss.student_id', $student_id)
        ->first();
        if($student_perc->full_marks!=0)
        {
            return (($student_perc->obtained_marks/$student_perc->full_marks)*100);
        }     
    }
    public static function get_class_average($week_id)
    {
        $class_highest=OfflineScoreSheet::where('week_id', $week_id)
                        ->avg('obtained_marks');
        return $class_highest;
        // // $class_highest=DB::table('offline_enrolled_students AS oes')
        // //                     ->join('offline_score_sheets AS oss', 'oss.week_id', 'oes.week_id')
        // //                     ->where('oes.week_id', $week_id)
        // //                     ->select(DB::raw('SUM(oss.obtained_marks)/COUNT(DISTINCT(oss.student_id)) AS average'))
        // //                     ->first();
        // // return $class_highest->average;
        // // dd($class_highest->average);
    }
    public static function get_class_highest($week_id)
    {
        // $class_highest=DB::table('offline_enrolled_students AS oes')
        //                     ->join('offline_score_sheets AS oss', 'oss.week_id', 'oes.week_id')
        //                     ->where('oes.week_id', $week_id)
        //                     ->select(DB::raw('SUM(oss.obtained_marks) AS highest'))
        //                     ->first();

        // return $class_highest->highest;
        // dd($class_highest);
    }
    public static function get_your_total($week_id, $student_id)
    {
    
        // $class_highest=OfflineScoreSheet::where('week_id', $week_id)
                        // ->avg('obtained_marks');
                        // ->get();
        // return $class_highest;
        // dd($class_highest);      
    }
    public function myScoresheet(Request $request)
    {  
        $name=auth()->user()->name;
        $week_id=$request->week_number;
        $week=Week::where('id', $week_id)->first();
        $student_id=auth()->user()->id;
        $subject_full_marks=SubjectFullMarks::where('week_id', $week_id)->get();
        return view('dashboard.student-scoresheet', compact('name', 'week', 'student_id', 'week_id', 'subject_full_marks'));
    }
    public function selectWeek()
    {
        $name=auth()->user()->name;
        $week_id=5;
        $week_alls=Week::all();
        $week=Week::where('id', $week_id)->first();
        $student_id=auth()->user()->id;
        $subject_full_marks=SubjectFullMarks::where('week_id', $week_id)->get();
        return view('dashboard.select-week', compact('name', 'week', 'student_id', 'week_id', 'subject_full_marks', 'week_alls'));
    }
    public function admin_scoresheet()
    {
        return view('admindashboardnew.admin-scoresheet');
    }

    /**
     * Process datatables ajax request.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function anyData()
    {
        $scores=OfflineScoreSheet::join('users', 'users.id', '=', 'offline_score_sheets.student_id')
                ->join('subject_full_marks', 'subject_full_marks.id', '=', 'offline_score_sheets.subject_full_mark_id')
                ->join('subjects', 'subjects.id', '=', 'subject_full_marks.subject_id')
                ->join('weeks', 'weeks.id', '=', 'offline_score_sheets.week_id')
                ->select('users.name AS name', 'subjects.name AS subject', 'offline_score_sheets.obtained_marks as marks', 'weeks.week_name AS week')
                ->get();
        // dd($scores);
        return Datatables::of($scores)->make(true);
    }
}