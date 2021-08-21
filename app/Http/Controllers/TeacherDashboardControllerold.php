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
        $startweek = Carbon::now()->startOfWeek()->format('d');
        $endweek = Carbon::now()->endOfWeek()->format('d');
        $id = auth()->user()->id;


        // $upcomingbatches = Batch::where('created_by', $id)
        //     ->orWhere('name', $id)
        //     ->get();
        // dd($upcomingbatches);
        // $id = 5;
        // dd($id);
        // dd($endweek);
        // dd(auth()->id());
        // $upcomingbatches = Batch::join('batch_session', 'batches.id', '=',  'batch_session.batch_id')
        //     // ->where('batches.created_by', auth()->user()->id)
        //     ->where('batches.name', auth()->id())
        //     ->whereBetween('batch_session.start_date_time', [$startweek, $endweek])
        //     ->select('batches.*', 'batch_session.*')
        //     ->get();
        // dd($upcomingbatches);
        // foreach ($upcomingbatches as $ub) {
        // dd($ub->assignTeacher->name);
        // }
        // $sessions = DB::table('batch_session')
        //     ->join('batches', 'batch_session.batch_id', '=', 'batches.id')

        //     ->select('batches.*', 'batch_session.*')
        //     ->whereCreatedBy($id)
        //     ->orWhere('batches.name', $id)
        //     ->get();
        // dd($sessions);
        return view('teacher.dashboard', compact('batches', 'startweek', 'endweek'));
    }
        public function profile()
    {
        return view('teacher.profile');
    }
}
