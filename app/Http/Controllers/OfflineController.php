<?php

namespace App\Http\Controllers;

use App\Models\OfflineEnrolledStudent;
use App\Models\Subject;
use App\Models\User;
use App\Models\Week;
use GuzzleHttp\Promise\Create;
use Illuminate\Http\Request;

class OfflineController extends Controller
{
    public function studentEnrollment()
    {
        $weeks = Week::all();
        return view('offlinescoresheet.student-enrollment', compact('weeks'));
    }

    public function studentEnrollmentSave(Request $request)
    {
        foreach ($request->student_id as $row) {
            OfflineEnrolledStudent::updateOrCreate([
                'week_id' => $request->week_name], [
                'student_id' => $row
                ]);
        }
        $weeks = Week::all();
        $subjects = Subject::all();
        return view('offlinescoresheet.full-marks', compact('weeks', 'subjects'));
    }
    public function studentEnrollmentIndex()
    {
        $students = User::with('student')->orWhere('role', 'student')->get();
        $weeks = Week::all();
        return view('offlinescoresheet.student-enrollment', compact('students', 'weeks'));
    }
    public function fullMarks(Request $request)
    {
        return view('offlinescoresheet.full-marks');
    }
}
