<?php

namespace App\Http\Controllers;

use App\Models\OfflineEnrolledStudent;
use App\Models\Student;
use App\Models\Subject;
use App\Models\SubjectFullMarks;
use App\Models\OfflineScoreSheet;
use App\Models\User;
use App\Models\Week;
use GuzzleHttp\Promise\Create;
use Illuminate\Http\Request;

class OfflineController extends Controller
{
    public function fullMarks()
    {
        $subjects = Subject::all();
        $weeks = Week::all();
        return view('offlinescoresheet.full-marks', compact('subjects', 'weeks'));
    }
    public function fullMarksSave(Request $request)
    {
        $i=0;
        foreach ($request->sub_id as $singleSubjectId) {
            SubjectFullMarks::updateOrCreate(
                [
                    'subject_id' => $singleSubjectId,
                    'week_id'=>$request->week_id
                ],
                [
                    'full_marks'=>$request->sub_marks[$i]
                ]
            );
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
        foreach ($request->student_id as $row) {
            OfflineEnrolledStudent::updateOrCreate([
                'week_id' => $request->weekId,
                'student_id' => $row
            ]);
        }
        $weeks = Week::all();
        $subjects = Subject::latest()->paginate(4);
        return view('offlinescoresheet.scoresheetmarks', compact('weeks', 'subjects'));
    }
    public function studentEnrollmentEdit($id)
    {
        $students = OfflineEnrolledStudent::find($id);
        return view('offlinescoresheet.student-enrollment-edit', compact('students'));
        $i=0;
        foreach ($request->sub_id as $singleSubjectId) {
            SubjectFullMarks::updateOrCreate(
                [
                    'week_id'=>$request->week_id
                ],
                [
                    'subject_id' => $singleSubjectId,
                    'full_marks'=>$request->sub_marks[$i]
                ]
            );
            $i++;
        }
        // $weeks = Week::all();
        $subjects = Subject::all();
        $students = User::with('student')->orWhere('role', 'student')->get();
        return view('offlinescoresheet.student-enrollment', compact('weeks', 'students', 'subjects'));
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
    public function offline_scoresheet(Request $request)
    {
        // dd($request->all());
        // dd($request->session()->has('subjects'));
        $subject_full_marks=SubjectFullMarks::where('week_id', 10)->get();
        // dd($subject_full_marks);
        $students=User::where('role', 'student')->get();

        // dd($students);
        // dd($marks);
        return view('offlinescoresheet.scoresheetmarks', compact('subject_full_marks', 'students'));
    }
    public function offline_scoresheet_pdf($student_id, $subject_full_mark_id)
    {
        $scores=OfflineScoreSheet::where('student_id', $student_id)->get();
        // dd($scores);
        return view('offlinescoresheet.scoresheetpdf');
    }

    public function studentEnrollMent(Request $request, $weekId)
    {
        $weeks = Week::all();
        $subjects = Subject::all();
        $students = User::with('student')->orWhere('role', 'student')->paginate(10);
        $students->withPath(route('student-enrollment_load', $weekId));
        $weekId = $request->week_id;
        $success = "Saved Successfully!";
        return view('offlinescoresheet.student-enrollment', compact(
            'weeks',
            'students',
            'subjects',
            'weekId',
            'success'
        ));
    }
    public function submit_score(Request $request)
    {
        foreach ($request->scoresheet as $key => $value) {
            foreach ($value as $newkey => $newvalue) {
                OfflineScoreSheet::create([
                    'subject_full_mark_id'=>$newkey,
                    'obtained_marks'=>$newvalue,
                    'student_id'=>$key,
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
        $obtained_marks=OfflineScoreSheet::where('student_id', $student_id)->where('subject_full_mark_id', $subject_full_mark_id)->get();
        foreach ($obtained_marks as $obtained_mark) {
            return $obtained_mark;
        }
    }
}
