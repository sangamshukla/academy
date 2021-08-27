<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class OfflineController extends Controller
{
    public function studentEnrollment(Request $request)
    {
        return view('offlinescoresheet.student-enrollment');
    }
    public function fullMarks(Request $request)
    {
        return view('offlinescoresheet.full-marks');
    }
}
