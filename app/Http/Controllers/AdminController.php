<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class AdminController extends Controller
{
    public function adminDashboard()
    {
        return view('admindashboardnew.dashboard');
    }
    public function offline_scoresheet()
    {
        return view('admindashboardnew.scoresheet');
    }
    public function offline_scoresheet_pdf()
    {
        return view('admindashboardnew.scoresheetpdf');
    }
}