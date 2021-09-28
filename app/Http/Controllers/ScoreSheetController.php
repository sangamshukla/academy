<?php

namespace App\Http\Controllers;
use App\Models\User;
use App\Models\ScoreSheet;
use App\Models\EnrolledStudent;
use App\Models\EnrolledSubject;
use App\Models\ScoreSheetMark;
use App\Models\Subject;
use App\Models\Week;
use App\Models\ClassMaster;
use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;

class ScoreSheetController extends Controller
{
    public function index()
    {
        // $scoresheets=Scoresheeet::all();
        $weeks=Week::all();
    $grades=ClassMaster::all();
    $scoresheets=ScoreSheet::all();
        return view('scoresheet.create-scoresheet', compact('weeks', 'grades', 'scoresheets'));
    }
    public function createScoreSheet(Request $request)
    {
        $is_already_created=$this->is_already_created($request->week, $request->grade);
        if(!$is_already_created)
        {
            $create=ScoreSheet::create([
            'week_id'=>$request->week,
            'class_master_id'=>$request->grade,
        ]);
         $id=$create->id;
        $students=User::where('role', 'student')->get();
        return view('scoresheet.select-student', compact('id', 'students'));
        }
        else {
            return back()->with('msg', "Score sheet has already been created");
        }
       
       
    }
    public function selectStudentGet($id)
    {
        
        $id=$id;
        $students=User::where('role', 'student')->get();
         return view('scoresheet.select-student-edit', compact('id', 'students'));
    }
    public function selectSubjectsEdit($id)
    {
         $subjects=Subject::all();
        return view('scoresheet.select-subject-edit', compact('id', 'subjects'));
    }
    public function is_already_created($week, $grade)
    {
        // dd('week is'. $week. ' grade is '. $grade);
        $is_already_created=Scoresheet::where('week_id', $week)->where('class_master_id', $grade)->exists();
        return $is_already_created;
    }
    public function selectStudent(Request $request)
    {   
        // dd($request->all());
    $id=$request->scoresheet_id;
    // $is_allowed=$request->is_allowed;
    // dd($is_allowed);
       foreach ($request->selected_students as $student => $value) {
              $enrolled_students=EnrolledStudent::updateOrCreate( 
                  [
                  'score_sheet_id'=>$id,
                  'user_id'=>$value,
                //   'is_allowed'=>$is_allowed,
              ]);
       }
    //    dd(EnrolledStudent::all());
    $subjects=Subject::all();
       return view('scoresheet.select-subject-edit', compact('subjects', 'id'));
    }
    public function selectSubjects(Request $request)
    {
        // dd($request->all());
        $scoresheet_id=$request->scoresheet_id;
        // dd($scoresheet_id);
        $request=$request->except(['_token', 'scoresheet_id']);
        // dd($request);
        foreach ($request as $key => $value) {
            if ($value!=NULL) {
                EnrolledSubject::updateOrCreate(
                    [
                        'score_sheet_id'=>$scoresheet_id,
                        'subject_id'=>$key,
                    ],
                [
                    'full_marks'=>$value,
                ]);
            }
        }
       return redirect('enter-marks/'. $scoresheet_id);
    }
    public function enterMarks($id)
    {
        $scoresheet_id=$id;
        // dd($scoresheet_id);
        $enrolled_students=EnrolledStudent::where('score_sheet_id', $scoresheet_id)->get();
        // dd($enrolled_students);
        $enrolled_subjects=EnrolledSubject::where('score_sheet_id', $scoresheet_id)->get();
        // dd($enrolled_students);
        return view('scoresheet.enter-marks', compact('enrolled_students', 'enrolled_subjects', 'scoresheet_id'));
    }
    public function saveMarks(Request $request)
    {
        // dd($request->all());
        $marks=$request->marks;
        foreach ($marks as $enrolled_student_id => $value) {
            foreach ($value as $enrolled_subject_id => $valueinner) {
                if($valueinner!=NULL)
                {
                    ScoreSheetMark::updateOrCreate(
                        [
                            'enrolled_subject_id'=>$enrolled_subject_id,
                            'enrolled_student_id'=>$enrolled_student_id
                        ],
                        [
                            'obtained_marks'=>$valueinner
                        ]
                    );
                }
            }
        }
        return back();
    }
    public static function get_obtained_marks($enrolled_student_id, $enrolled_subject_id)
    {
        $obtained_marks=ScoreSheetMark::where('enrolled_subject_id', $enrolled_subject_id)
                                        ->where('enrolled_student_id', $enrolled_student_id)
                                        ->select('obtained_marks')
                                        ->first();
        // $obtained_marks=$obtained_marks->obtained_marks;
        // var_dump($obtained_marks);
        if(isset($obtained_marks->obtained_marks))
        {
            return $obtained_marks->obtained_marks;
        }
        else {
            return NULL;
        }
        // return $obtained_marks;
    }
    public function viewScoreSheet($score_sheet_id)
    {
        $score_sheet_id=$score_sheet_id;
        $scoresheet=ScoreSheet::find($score_sheet_id);
        $enrolled_subjects=$scoresheet->enrolled_subjects;
        $enrolled_students=$scoresheet->enrolled_students;
        return view('scoresheet.view-scoresheet', compact('enrolled_subjects', 'enrolled_students', 'score_sheet_id'));
    }
    public static function get_full_marks($enrolled_student_id)
    {
        $full_marks=ScoreSheetMark::where('enrolled_student_id', $enrolled_student_id)->sum('obtained_marks');
        return $full_marks;
    }
    public static function is_already_enrolled_subject($subject_id, $scoresheet_id)
    {
        // dd($subject_id, $scoresheet_id);
        $is_already_enrolled_subject=EnrolledSubject::where('subject_id', $subject_id)->where('score_sheet_id', $scoresheet_id)->exists();
        return $is_already_enrolled_subject;
    }
    public static function get_full_marks_subject($subject_id, $scoresheet_id)
    {
        // dd($subject_id, $scoresheet_id);
        $get_full_marks_subject=EnrolledSubject::where('subject_id', $subject_id)->where('score_sheet_id', $scoresheet_id)->first();
        return $get_full_marks_subject;
    }
    public static function isStudentEnrolled($student_id, $scoresheet_id)
    {
        $is_student_enrolled=EnrolledStudent::where('score_sheet_id', $scoresheet_id)->where('user_id', $student_id)->exists();
        return $is_student_enrolled;    
    }
    public function viewStudentScoreSheet($enrolled_student_id)
    {
        $score_infos=ScoreSheetMark::where('enrolled_student_id', $enrolled_student_id)->get();
        // dd($score_infos);
        $student_info=EnrolledStudent::find($enrolled_student_id);
        // dd($student_info->student->id);
        // $highest =ScoreSheetMark::classHighest();
        // dd($highest);
        // $lowest=ScoreSheetMark::classLowest();
        // dd($lowest);
        // $a=EnrolledSubject::highest(1);
        // dd($a);
        $score_sheet_id=EnrolledStudent::where('id', $enrolled_student_id)->first()->score_sheet_id;
        $score_sheet_infos=EnrolledSubject::where('score_sheet_id', $score_sheet_id)->get();
        // dd($score_sheet_info);
        // $highest
        return view('scoresheet.student-shoresheet', compact('score_infos', 'student_info','score_sheet_infos', 'enrolled_student_id'));
    }
    public static function getRanking($score_sheet_id)
    {
        // $population = WildlifePopulation::select(
        //                 DB::raw("year(created_at) as year"),
        //                 DB::raw("SUM(bears) as bears"),
        //                 DB::raw("SUM(dolphins) as dolphins")) 
        //             ->orderBy(DB::raw("YEAR(created_at)"))
        //             ->groupBy(DB::raw("YEAR(created_at)"))
        //             ->get();
        // $ranking=EnrolledSubject::where('score_sheet_id', $score_sheet_id)
        //         ->join('score_sheet_marks AS ssm', 'ssm.enrolled_subject_id', '')        
        // ->get();
        // $ranking=ScoreSheet::where('id', $score_sheet_id)
        //         ->join('')
        //         ->get();
        $ranking=DB::table('score_sheet_marks AS ssm')
                ->join('enrolled_subjects AS es', 'es.id', '=','ssm.enrolled_subject_id')
                ->where('es.score_sheet_id' ,$score_sheet_id)
                ->selectRaw('SUM(ssm.obtained_marks) AS total, ssm.enrolled_student_id')
                // ->select('') 
                ->groupBy(DB::raw('ssm.enrolled_student_id'))
                ->orderBy('total', 'DESC')
                ->get();

       return $ranking;

    }


}
