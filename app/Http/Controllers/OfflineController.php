<?php

namespace App\Http\Controllers;

use App\Models\ClassMaster;
use App\Models\OfflineEnrolledStudent;
use Illuminate\Support\Facades\DB;
use Yajra\Datatables\Datatables;
use App\Models\Student;
use App\Models\Subject;
use App\Models\SubjectFullMarks;
use App\Models\OfflineScoreSheet;
use App\Models\SubTopic;
use App\Models\Topic;
use App\Models\User;
use App\Models\Week;
use GuzzleHttp\Promise\Create;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Yajra\DataTables\Html\Builder;
use PDF;

class OfflineController extends Controller
{

    public function fullMarks(Request $request)
    {
        $subjects = Subject::all();
        $weeks = Week::all();
        $hasValue = false;
        $classes = ClassMaster::all();

        if ($request->has('weekId', 'classId')) {
            $fullMarks = SubjectFullMarks::where('week_id', $request->weekId)->get();

            if ($fullMarks->count() > 0) {
                $hasValue = true;
            }
        } else {
            $fullMarks = new SubjectFullMarks();
        }
        return view('offlinescoresheet.full-marks', compact('subjects','classes' ,'hasValue', 'weeks', 'fullMarks'));
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
                        'week_id'=>$request->week_id,
                        'class_master_id'=>$request->class_master_id,
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

    public function ShowClass(Request $request)
    {
        //dd('j');
        // $classes = ClassMaster::all();
        // return view('offlinescoresheet.full-marks', compact('classes'));
    }

    public function studentEnrollmentSave(Request $request)
    {
        // dd($request->all());
    //
         OfflineEnrolledStudent::where('week_id',$request->weekId)->delete();
        foreach ($request->student_id as $row) {


            OfflineEnrolledStudent::create([
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
        $subject_full_marks=SubjectFullMarks::where('week_id', $week_id)->get();
        // dd($subject_full_marks);
        $students=OfflineEnrolledStudent::where('week_id', $week_id)->get();

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
        // $subject_full_marks=SubjectFullMarks::where('week_id', $week_id)->get();

        // $subject_full_mark_id=OfflineScoreSheet::where('week_id', $week_id)->where('student_id', $student_id)->get();
        $name=User::find($student_id)->name;
        // $class_highest=OfflineScoreSheet::groupBy('student_id')->get();
        // $week=Week::find($week_id);
        // $class_lowest=OfflineScoreSheet::where('week_id', $week_id)->min('obtained_marks');
        // $class_avg=OfflineScoreSheet::where('week_id', $week_id)->avg('obtained_marks');
        // $student_obtained_marks=OfflineScoreSheet::where('week_id', $week_id)->where('student_id', $student_id)->get();
        // dd($student_obtained_marks);
        // dd($class_highest);
        // $name=auth()->user()->name;
        $week_id=$week_id;
        // dd($week_id);
        $week=Week::where('id', $week_id)->first();
        $student_id=$student_id;
        $subject_full_marks=SubjectFullMarks::where('week_id', $week_id)->get();
        $all_weeks=$this->get_weeks();
        // dd($all_weeks);
        // return view('dashboard.student-scoresheet', compact('all_weeks', 'name', 'week', 'student_id', 'week_id', 'subject_full_marks'));

        return view('offlinescoresheet.newscoresheetpdf', compact( 'all_weeks', 'name', 'week', 'student_id', 'week_id', 'subject_full_marks'));
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
    public function get_student($weekId)
    {
        // $weekId=collect($weekId);
        $users=User::where('role', 'student')->get();
        return Datatables::of($users)
                                ->addColumn('checkbox', function ($user) use ($weekId){
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
        // dd($request->all());
        if ($request->is_allowed=="1") {
            $is_allowed=true;
        }
        else {
            $is_allowed=false;
        }
        foreach ($request->scoresheet as $key => $value) {
            // dd([$key, $request->is_allowed, $request->week_id]);
            foreach ($value as $newkey => $newvalue) {
                OfflineScoreSheet::create([
                    'subject_full_mark_id'=>$newkey,
                    'obtained_marks'=>$newvalue,
                    'student_id'=>$key,
                    'week_id'=>$request->week_id
                ]);
            }
            $column_to_update=OfflineEnrolledStudent::where(['student_id'=>$key,'week_id'=>$request->week_id])->firstOrFail();
            // dd($is_allowed);
            $column_to_update->is_allowed=$is_allowed;
            $column_to_update->save();
            // dd($allowed);

        }
        return redirect()->back();
    }
    public static function is_allowed($student_id, $week_id)
    {
        $allowed=OfflineEnrolledStudent::where('student_id', $student_id)->where('week_id', $week_id)->first();
        // dump($allowed->is_allowed);
        if($allowed->is_allowed)
        {
            return true;
        }
        else {
            return false;
        }
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
        $all_students=OfflineScoreSheet::where('week_id', $week_id)->pluck('student_id')->toArray();
        // dd($all_students);
        $students=collect($all_students);
        $marks=[];
        foreach ($students as $student) {
            $total_marks=OfflineScoreSheet::where('student_id', $student)->where('week_id', $week_id)->sum('obtained_marks');
            array_push($marks, $total_marks);
        }
        return $marks;


    }
    public static function get_your_total($week_id, $student)
    {

            $total_marks=OfflineScoreSheet::where('student_id', $student)->where('week_id', $week_id)->sum('obtained_marks');
            return $total_marks;
    }
    public function myScoresheet(Request $request)
    {
        $name=auth()->user()->name;
        $student_id=auth()->user()->id;
        $week_id=$request->week_number;
        $is_allowed=$this->is_allowed($student_id, $week_id);
        // dd($is_allowed);
        // dd($week_id);
        $week=Week::where('id', $week_id)->first();
        $student_id=auth()->user()->id;
        $subject_full_marks=SubjectFullMarks::where('week_id', $week_id)->get();
        $all_weeks=$this->get_weeks();
        // dd($all_weeks);
        if ($is_allowed) {
            # code...
            return view('dashboard.student-scoresheet', compact('all_weeks', 'name', 'week', 'student_id', 'week_id', 'subject_full_marks'));
        }
        else {
            return "Not allowed, Please ask administrator first";
        }
    }
    public function get_weeks()
    {
        $all_weeks=SubjectFullMarks::select('week_id')->distinct()->orderBy('week_id', 'desc')->get();
        $week_names=collect([]);
        foreach ($all_weeks as $all_week => $week_id) {
            $week_names->push($week_id->week_name);
        }
        return response()->json($week_names);
    }
    public function get_week_marks()
    {
        $marks=OfflineScoreSheet::all();
        $all_marks=collect([]);
        foreach($marks as $mark =>$obtained_markss)
        {
            $all_marks->push($obtained_markss->obtained_marks);
        }
        return response()->json($all_marks);
    }
    public function get_week_data()
    {
        $all_weeks=SubjectFullMarks::select('week_id')->distinct()->orderBy('week_id', 'desc')->get();
        $week_names=collect([]);
        foreach ($all_weeks as $all_week => $week_id) {
            $week_names->push($week_id->week_name);
        }
        return $week_names;
    }
    public function selectWeek()
    {
        $is_allowed=true;
        $name=auth()->user()->name;
        $week_id=1;
        $week_alls=Week::all();
        $week=Week::where('id', $week_id)->first();
        $student_id=auth()->user()->id;
        $subject_full_marks=SubjectFullMarks::where('week_id', $week_id)->get();
        return view('dashboard.select-week', compact('name', 'week', 'student_id', 'week_id', 'subject_full_marks', 'week_alls'));
    }
    public function admin_score()
    {
        $week_id=1;
        $subject_full_marks=SubjectFullMarks::where('week_id', $week_id)->get();
        // foreach ($subject_full_marks as $subject_full_mark) {
        //     dump($subject_full_mark);
        // }
        $weeks=$this->get_week_data();
        $enrolled_students=OfflineEnrolledStudent::join('users', 'users.id', '=', 'offline_enrolled_students.student_id')
                            ->where('week_id', $week_id)->get();
                            // dd($enrolled_students);
        return view('admindashboardnew.admin-score', compact('subject_full_marks', 'weeks'));
    }

    /**
     * Process datatables ajax request.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function admin_score_data1()
    {
        $week_id=1;
        $subject_full_marks=SubjectFullMarks::where('week_id', $week_id)->get()->toArray();
        $count=count($subject_full_marks);
        // $subjects=Subject::get();
        $enrolled_students=OfflineEnrolledStudent::join('subject_full_marks', 'subject_full_marks.week_id', '=', 'offline_enrolled_students.week_id')
                                                // ->join('subjects', 'subject_full_marks.subject_id', '=', 'subjects.id')
                                                ->join('offline_score_sheets', 'offline_score_sheets.subject_full_mark_id', '=', 'subject_full_marks.id')
                                            ->join('users', 'users.id', '=', 'offline_enrolled_students.student_id')
                                                    ->where('subject_full_marks.week_id', $week_id)->get();
        // dd($scores);

        return Datatables::of($enrolled_students)
                            ->editColumn('english_marks'  , function($enrolled_student)
                            {
                                if($enrolled_student->subject_id==1)
                                {
                                    if($enrolled_student->week_id==1)
                                    {
                                        return $enrolled_student->obtained_marks;
                                    }
                                }
                            })
                            ->editColumn('maths', function($enrolled_student)
                            {
                                $new_score=OfflineScoreSheet::where('student_id', $enrolled_student->id)
                                ->where('week_id', $enrolled_student->week_id)
                                ->where('subject_full_mark_id', $enrolled_student->subject_full_mark_id)
                                ->first();
                                if(isset($new_score->obtained_marks))
                                {
                                    return $new_score->obtained_marks;
                                }
                            })
                            ->toJson();
    }
    public function admin_score_data($week_id)
    {
        // $week_id=;
        $subject_full_marks=SubjectFullMarks::where('week_id', $week_id)->get()->toArray();
        $count=count($subject_full_marks);
        // $subjects=Subject::get();
        $enrolled_students=OfflineEnrolledStudent::join('users', 'users.id', '=', 'offline_enrolled_students.student_id')
                                                    ->where('offline_enrolled_students.week_id', $week_id)->get();
        // dd($scores);

        return Datatables::of($enrolled_students)
                        ->setTransformer(function($enrolled_student)use($week_id){
                            $student_id=$enrolled_student->student_id;
                            $subjects=Subject::all()->toArray();
                            $english_marks=DB::table('offline_score_sheets AS oss')
                                            ->join('subject_full_marks AS sfm',  "sfm.id", "=", "oss.subject_full_mark_id" )
                                            ->where("oss.week_id", $week_id)
                                            ->where('oss.student_id', $student_id)
                                            ->where('sfm.subject_id' , 1)
                                            ->select('obtained_marks')
                                            ->get();
                            $english_rank=$this->getRanking($week_id, 1, $student_id);
                            $english_rank_no=$this->get_rank_no($english_rank, $student_id);

                            $math_rank=$this->getRanking($week_id, 2, $student_id);
                            $math_rank_no=$this->get_rank_no($math_rank, $student_id);

                            $physics_rank=$this->getRanking($week_id, 3, $student_id);
                            $physics_rank_no=$this->get_rank_no($physics_rank, $student_id);

                            $science_rank=$this->getRanking($week_id, 4, $student_id);
                            $science_rank_no=$this->get_rank_no($science_rank, $student_id);

                            $maths_marks=DB::table('offline_score_sheets AS oss')
                                            ->join('subject_full_marks AS sfm',  "sfm.id", "=", "oss.subject_full_mark_id" )
                                            ->where("oss.week_id", $week_id)
                                            ->where('oss.student_id', $student_id)
                                            ->where('sfm.subject_id' , 2)
                                            ->select('obtained_marks')
                                            ->get();
                            $physics_marks=DB::table('offline_score_sheets AS oss')
                                            ->join('subject_full_marks AS sfm',  "sfm.id", "=", "oss.subject_full_mark_id" )
                                            ->where("oss.week_id", $week_id)
                                            ->where('oss.student_id', $student_id)
                                            ->where('sfm.subject_id' , 3)
                                            ->select('obtained_marks')
                                            ->get();
                            $science_marks=DB::table('offline_score_sheets AS oss')
                                            ->join('subject_full_marks AS sfm',  "sfm.id", "=", "oss.subject_full_mark_id" )
                                            ->where("oss.week_id", $week_id)
                                            ->where('oss.student_id', $student_id)
                                            ->where('sfm.subject_id' , 4)
                                            ->select('obtained_marks')
                                            ->get();
                            return [
                                'name'=>$enrolled_student->name,
                                'english'     => $english_marks->map(function($english_mark)
                                                {
                                                    return round($english_mark->obtained_marks);
                                                }),
                                'english_rank'=> $english_rank_no,
                                'maths'       => $maths_marks->map(function($math_mark)
                                                {
                                                    return round($math_mark->obtained_marks);
                                                }),
                                'math_rank'=> $math_rank_no,
                                'physics'     => $physics_marks->map(function($physics_mark)
                                                {
                                                    return round($physics_mark->obtained_marks);
                                                }),
                                'physics_rank'=>$physics_rank_no,
                                'science'     => $science_marks->map(function($science_mark)
                                                {
                                                    return round($science_mark->obtained_marks);
                                                }),
                                'science_rank'=>$science_rank_no,
                            ];
                        })
                            ->make(true);
    }
    public static function get_rank_no($rank, $student_id)
    {
        $i=0;
        $last_score=NULL;
        foreach ($rank as $r) {
            if($r->student_id==$student_id)
            {
                // dump($r);
                // dump($last_score);
                if($last_score!=$r->obtained_marks)
                {
                    return $i+1;
                }
                else {
                    return $i;
                }
                // return $i;
            }
            $last_score=$r->obtained_marks;
            $i=$i+1;
        }
    }
    public function admin_score_data_save(Request $request)
    {
        $week_id=$request->week_number;
        $subject_full_marks=SubjectFullMarks::where('week_id', $week_id)->get()->toArray();
        $count=count($subject_full_marks);
        // $subjects=Subject::get();
        $enrolled_students=OfflineEnrolledStudent::join('users', 'users.id', '=', 'offline_enrolled_students.student_id')
                                                    ->where('offline_enrolled_students.week_id', $week_id)->get();
        // dd($scores);

        return Datatables::of($enrolled_students)
                        ->setTransformer(function($enrolled_student)use($week_id){
                            $student_id=$enrolled_student->student_id;
                            $subjects=Subject::all()->toArray();
                            $english_marks=DB::table('offline_score_sheets AS oss')
                                            ->join('subject_full_marks AS sfm',  "sfm.id", "=", "oss.subject_full_mark_id" )
                                            ->where("oss.week_id", $week_id)
                                            ->where('oss.student_id', $student_id)
                                            ->where('sfm.subject_id' , 1)
                                            ->select('obtained_marks')
                                            ->first();
                            $maths_marks=DB::table('offline_score_sheets AS oss')
                                            ->join('subject_full_marks AS sfm',  "sfm.id", "=", "oss.subject_full_mark_id" )
                                            ->where("oss.week_id", $week_id)
                                            ->where('oss.student_id', $student_id)
                                            ->where('sfm.subject_id' , 2)
                                            ->select('obtained_marks')
                                            ->get();
                            $physics_marks=DB::table('offline_score_sheets AS oss')
                                            ->join('subject_full_marks AS sfm',  "sfm.id", "=", "oss.subject_full_mark_id" )
                                            ->where("oss.week_id", $week_id)
                                            ->where('oss.student_id', $student_id)
                                            ->where('sfm.subject_id' , 3)
                                            ->select('obtained_marks')
                                            ->get();
                            $science_marks=DB::table('offline_score_sheets AS oss')
                                            ->join('subject_full_marks AS sfm',  "sfm.id", "=", "oss.subject_full_mark_id" )
                                            ->where("oss.week_id", $week_id)
                                            ->where('oss.student_id', $student_id)
                                            ->where('sfm.subject_id' , 4)
                                            ->select('obtained_marks')
                                            ->get();
                            return [
                                'name'=>$enrolled_student->name,
                                'english'     => $english_marks->map(function($english_mark)
                                                {
                                                    return $english_mark->obtained_marks;
                                                }),
                                'maths'       => $maths_marks->map(function($math_mark)
                                                {
                                                    return $math_mark->obtained_marks;
                                                }),
                                'physics'     => $physics_marks->map(function($physics_mark)
                                                {
                                                    return $physics_mark->obtained_marks;
                                                }),
                                'science'     => $science_marks->map(function($science_mark)
                                                {
                                                    return $science_mark->obtained_marks;
                                                }),
                                'rank'=>"1",
                            ];
                        })
                            ->make(true);
    }
    public function ManageYearIndex(Request $request)
    {
        $years = ClassMaster::all();
        return view('offlinescoresheet.manage-year', compact('years'));
    }

    public function manageYear(Request $request)
    {
        return view('offlinescoresheet.add-manage-year');
    }

    public function manageYearSave(Request $request)
    {
        $year = ClassMaster::create([
            'name' => $request->name
        ]);
        // return view('offlinescoresheet.add-manage-year', compact('year'));
        return redirect(route('manage-year'))->with('status', 'Year Added Successfully!');

    }
    public function manageYearEdit(Request $request, $id)
    {
        $year = ClassMaster::find($id);

        // dd($years);
        return view('offlinescoresheet.manage-year-edit', compact('year'));
    }
    public function manageYearUpdate(Request $request, $id)
    {
        $year = ClassMaster::updateOrCreate(
            [
                'id' => $request->id
            ],
            [
            'name'=>$request->name,
        ]);

        return redirect(route('manage-year'))->with('status', 'Year Updated Successfully!');
        // return redirect('manage-year')->with('success', 'Year Updated Successfully');
    }


    public function ManageSubjectIndex(Request $request)
    {
        $subjects = Subject::all();
        return view('offlinescoresheet.manage-subject', compact('subjects'));
    }
    public function manageSubject(Request $request)
    {
        return view('offlinescoresheet.add-manage-subject');
    }
    public function manageSubjectSave(Request $request)
    {
        $subjects = Subject::create([
            'name' => $request->name,
            'class_master_id' => 1
        ]);
        return redirect(route('manage-subject'))->with('status', 'Subject Added Successfully!');

    }

    public function ManageSubjectEdit(Request $request, $id)
    {
        $subject = Subject::find($id);
        return view('offlinescoresheet.manage-subject-edit', compact('subject'));
    }
    public function ManageSubjectUpdate(Request $request, $id)
    {
        $subject = Subject::updateOrCreate(
            [
                'id' => $request->id
            ],
            [
                'name' => $request->name,
            ]);

            return redirect(route('manage-subject'))->with('status', 'Subject Updated Successfully!');
    }
    public function manageTopic(Request $request)
    {
        // $topics = Topic::all();
        $subjects = Subject::all();

        return view('offlinescoresheet.manage-topic', compact('subjects'));
    }
    public function manageTopicSave(Request $request, $id)
    {
        if($request->has('sub_topic_name')){
        // dd($request->all());

            $topic = Topic::Create([
                'subject_id' => $id,
                'name'=>$request->sub_topic_name,
            ]);
            return redirect(route('manage-topic'))->with('status', 'Topic Added Successfully');
        }


        $subjects = Subject::find($id);
        $subject = Subject::find($id);
        return view('offlinescoresheet.manage-topic-save', compact('subjects', 'subject'));
    }

    public function get_graph_math($student_id)
    {
        // $student_id=auth()->user()->id;
        $student_id=$student_id;
        $subject_id=1;
        $score_graph_math=DB::table('offline_score_sheets AS oss')
                    ->join("subject_full_marks AS sfm", "sfm.id","=","oss.subject_full_mark_id")
                    ->join('weeks AS w','w.id', '=', 'oss.week_id' )
                    ->join('subjects AS sb', 'sb.id', '=', 'sfm.subject_id')
                    ->where('student_id', "=", $student_id)
                    ->where('sfm.subject_id', "=", $subject_id)
                    ->select('oss.obtained_marks', "w.week_name", 'sb.name')
                    ->get();
        return response()->json($score_graph_math);
        // dd("graph data");
        // select oss.obtained_marks, oss.week_id from offline_score_sheets oss inner join subject_full_marks sfm on sfm.id=oss.subject_full_mark_id where student_id=4 and sfm.subject_id =1
    }
    public function get_graph_english($student_id)
    {
        $student_id=$student_id;
        $subject_id=2;
        $score_graph_english=DB::table('offline_score_sheets AS oss')
                    ->join("subject_full_marks AS sfm", "sfm.id","=","oss.subject_full_mark_id")
                    ->join('weeks AS w','w.id', '=', 'oss.week_id' )
                    ->join('subjects AS sb', 'sb.id', '=', 'sfm.subject_id')
                    ->where('student_id', "=", $student_id)
                    ->where('sfm.subject_id', "=", $subject_id)
                    ->select('oss.obtained_marks', "w.week_name", 'sb.name')
                    ->get();
        return response()->json($score_graph_english);
        // dd("graph data");
        // select oss.obtained_marks, oss.week_id from offline_score_sheets oss inner join subject_full_marks sfm on sfm.id=oss.subject_full_mark_id where student_id=4 and sfm.subject_id =1
    }
    public function get_graph_physics($student_id)
    {
        $student_id=$student_id;
        $subject_id=3;
        $score_graph_physics=DB::table('offline_score_sheets AS oss')
                    ->join("subject_full_marks AS sfm", "sfm.id","=","oss.subject_full_mark_id")
                    ->join('weeks AS w','w.id', '=', 'oss.week_id' )
                    ->join('subjects AS sb', 'sb.id', '=', 'sfm.subject_id')
                    ->where('student_id', "=", $student_id)
                    ->where('sfm.subject_id', "=", $subject_id)
                    ->select('oss.obtained_marks', "w.week_name", 'sb.name')
                    ->get();
        return response()->json($score_graph_physics);
        // dd("graph data");
        // select oss.obtained_marks, oss.week_id from offline_score_sheets oss inner join subject_full_marks sfm on sfm.id=oss.subject_full_mark_id where student_id=4 and sfm.subject_id =1
    }
    public function get_graph4($student_id)
    {
        $student_id=$student_id;
        $subject_id=4;
        $score_graph4=DB::table('offline_score_sheets AS oss')
                    ->join("subject_full_marks AS sfm", "sfm.id","=","oss.subject_full_mark_id")
                    ->join('weeks AS w','w.id', '=', 'oss.week_id' )
                    ->join('subjects AS sb', 'sb.id', '=', 'sfm.subject_id')
                    ->where('student_id', "=", $student_id)
                    ->where('sfm.subject_id', "=", $subject_id)
                    ->select('oss.obtained_marks', "w.week_name", 'sb.name')
                    ->get();
        return response()->json($score_graph4);
        // dd("graph data");
        // select oss.obtained_marks, oss.week_id from offline_score_sheets oss inner join subject_full_marks sfm on sfm.id=oss.subject_full_mark_id where student_id=4 and sfm.subject_id =1
    }
    public static function getRanking($week_id, $subject_id, $student_id)
    {
        $ranking=DB::table('offline_score_sheets AS oss')
                    ->join('subject_full_marks AS sfm',  'sfm.id', '=', 'oss.subject_full_mark_id' )
                    ->where('oss.week_id', $week_id)
                    ->where('sfm.subject_id', $subject_id)
                    ->select('oss.obtained_marks', 'oss.student_id', 'oss.week_id', 'sfm.subject_id')
                    ->orderBy('oss.obtained_marks', 'DESC')
                    // ->where('oss.student_id', 4)
                    ->get();
        // $ranking=10;
        // $ranking=$ranking->map(function ($item, $key) {
        //         return $item;
        // });
       return $ranking;

//select oss.obtained_marks, oss.student_id, oss.week_id, sfm.subject_id,
// RANK() OVER ( ORDER BY obtained_marks) stu_rank FROM offline_score_sheets oss
// inner join subject_full_marks sfm on sfm.id =oss.subject_full_mark_id
// WHERE oss.week_id = 1
// AND sfm.subject_id =1
    }
    public static function getTotalStudents($week_id)
    {
        return OfflineEnrolledStudent::where('week_id', $week_id)->get()->count('student_id');
    }
    public function get_admin_score()
    {
        $week_id=1;
         $weeks=$this->get_week_data();
        $students=OfflineEnrolledStudent::where('week_id', $week_id)->get();
        // $subjects=SubjectFullMarks::where('week_id', $week_id)->get();
        $subjects=$this->getSubjects($week_id);
        // dd($subjects);
    return view('offlinescoresheet.htmlbuilder', compact('students', 'subjects', 'week_id', 'weeks'));

    }
    public function get_admin_score_post(Request $request)
    {
        // dd($request->all());
        $week_id=$request->week_id;
         $weeks=$this->get_week_data();
        $students=OfflineEnrolledStudent::where('week_id', $week_id)->get();
        // $subjects=SubjectFullMarks::where('week_id', $week_id)->get();
        $subjects=$this->getSubjects($week_id);
        // dd($subjects);
    return view('offlinescoresheet.score-table', compact('students', 'subjects', 'week_id', 'weeks'));

    }
    public function getSubjects($week_id)
    {
        // dd($student_id, $week_id);
        return SubjectFullMarks::where('week_id', $week_id)->get();
    }
    public static function get_marks($student_id, $subject_id, $week_id)
    {
        $marks=OfflineScoreSheet::where('week_id', $week_id)->where('subject_full_mark_id', $subject_id)->where('student_id', $student_id)->first();
        return $marks;
        // return $student_id.'-'.$subject_id."-".$week_id;
    }
    public function new_offline_scoresheet_edit($student_id, $week_id)
    {
        $data=OfflineScoreSheet::where('student_id', $student_id)->where('week_id', $week_id)->get();
        $allowed = \App\Http\Controllers\OfflineController::is_allowed($student_id, $week_id);
       return view('offlinescoresheet.score-edit', compact('data', 'allowed', 'student_id', 'week_id'));
    }
    public function new_offline_scoresheet_update(Request $requests)
    {
        dd($requests->all());
        foreach ($requests as $request) {
            # code...
            OfflineScoreSheet::updateOrCreate([
                'student_id'=>$request->student_id,
                'week_id'=>$request->week_id,
                'subject_full_mark_id'=>$request->subject_full_mark_id,
            ], 
            [
                'obtained_marks'=>$request->obtained_marks,
            ]);
        }
    }
}
