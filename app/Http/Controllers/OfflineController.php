<?php

namespace App\Http\Controllers;

use App\Models\OfflineEnrolledStudent;
use App\Models\Subject;
use App\Models\SubjectFullMarks;
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
        $students = User::with('student')->orWhere('role', 'student')->get();
        return view('offlinescoresheet.student-enrollment', compact('weeks', 'students', 'subjects'));
        // return redirect(route('student-enrollment', compact('weeks', 'students', 'subjects')))->with('status', 'Created FullMarks Successfully');
    }
    public function fullMarksEdit(Request $request, $id)
    {
        $subject = Subject::find($id);
        return view('offlinescoresheet.fullmarks-edit', compact('subject'));
    }
    public function fullMarksUpdate(Request $request, $id)
    {
        $i=0;
        foreach ($request->sub_id as $singleSubjectId) {
            SubjectFullMarks::updateOrCreate(
                [
                    'subject_id' => $singleSubjectId,
                    // 'week_id'=>$request->week_id
                ],
                [
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

    public function studentEnrollmentSave(Request $request)
    {
        // dd($request->all());
        foreach ($request->student_id as $row) {
            OfflineEnrolledStudent::updateOrCreate([
                'week_id' => $request->week_name,
                'student_id' => $row
            ]);
        }
        $weeks = Week::all();
        $subjects = Subject::all();
        return view('offlinescoresheet.scoresheetmarks', compact('weeks', 'subjects'));
    }
 
    public function adminDashboard()
    {
        return view('offlinescoresheet.dashboard');
    }
    public function offline_scoresheet()
    {
        return view('offlinescoresheet.scoresheetmarks');
    }
    public function offline_scoresheet_pdf()
    {
        return view('offlinescoresheet.scoresheetpdf');
    }
}
