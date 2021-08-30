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
    public function fullMarks()
    {
        return view('offlinescoresheet.full-marks');
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
