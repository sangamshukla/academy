<?php

namespace App\Http\Controllers;

use App\Models\Batch;
use App\Models\BatchSession;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TeacherDashboardController extends Controller
{

    public function index()
    {
        $batches = Batch::whereCreatedBy(auth()->user()->id)->orWhere('name', auth()->id())->latest()->get();
        $batches = Batch::whereCreatedBy(auth()->user()->id)->orWhere('name', auth()->id())
            ->get();
        $startweek = strtotime(Carbon::now()->startOfWeek());
        $endweek = strtotime(Carbon::now()->endOfWeek());
        $id = auth()->user()->id;
        $session_data = DB::table('batch_session')
            ->join('batches', 'batch_session.batch_id', '=', 'batches.id')
            ->join('users', 'batches.name', '=', 'users.id')
            ->whereDate('batch_session.start_date_time', '>=', Carbon::today())
            ->where('batches.name', '=', $id)
            ->select('batch_session.*')
            ->get()
            ->toArray();
        $status = "active";
        $days_in_month = cal_days_in_month(CAL_GREGORIAN, date('m'), date('Y'));
        $session_yes = 1;
        return view('teacher.dashboard', compact('batches', 'startweek', 'endweek', 'days_in_month', 'session_yes', 'session_data'));
    }
}
