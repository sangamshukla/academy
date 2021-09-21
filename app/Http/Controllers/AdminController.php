<?php

namespace App\Http\Controllers;

use App\Models\Batch;
use App\Models\Teacher;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class AdminController extends Controller
{
    public function adminDashboard()
    {
        $totalteachers = User::where('role', 'teacher')->count();
        $totalstudent = User::where('role', 'student')->count();
        $totalclasses = Batch::count();
        $totonlineclasses = Batch::where('status', '1')->count();
        $totofflineclasses = Batch::where('status', '0')->count();

        // dd($totonlineclasses);
        return view('admindashboardnew.dashboard', compact('totalteachers', 'totalstudent', 'totalclasses', 'totonlineclasses', 'totofflineclasses'));
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
