<?php

namespace App\Http\Controllers;

use App\Models\Batch;
use Carbon\Carbon;
use Facade\FlareClient\View;
use Illuminate\Http\Request;

class TeacherCalanderController extends Controller
{

    public function index($id)
    {
        $date = today()->format('d M');
        $year = today()->format('Y');
        $id = $id;
        return view('teacher_calander.calander', compact('date', 'year', 'id'));
    }
    public function sessions(Request $request)
    {

        // $datepicker = $request->currentDate;
        $datepicker = Carbon::parse($request->currentDate);
        $datetime = $datepicker->format('Y-m-d');
        $teacher_id = $request->teacherId;
        $batches = Batch::join('batch_session', 'batches.id', '=', 'batch_session.batch_id')
            ->select('batches.duration_per_session', 'batch_session.name', 'batch_session.start_date_time')
            ->whereDate('batch_session.start_date_time', $datetime)->get();
        // dd($batches);

        //trying to get Topics now.




        foreach ($batches as $batch) {
            $time = Carbon::parse($batch->start_date_time)->format('gi');
        }
        // print_r($time);
        // dd($batches->count());

        // foreach ($batches as $batch) {
        //     $time = Carbon::parse($batch->start_date_time)->format('H:i');
        // return $time;

        // dd($time);
        // }
        // $timeline = array(
        //     "900" => "0",
        //     "930" => "50",
        //     "1000" => "100",
        //     "1030" => "150"
        // );
        // foreach ($timeline as $timeline => $timeline_value) {
        //     switch ($timeline) {
        //         case $time:
        //             $timeline_value = $timeline_value;
        //     }
        // }
        // dd($batch);
        // for ($i = 1; $i = $batches->count(); $i++) {
        // switch ($time) {
        //     case 900:
        //         $position = 0;
        //         break;
        //     case 930:
        //         $position = 5;
        //         break;
        //     case 1000:
        //         $position = 10;
        //         break;
        //     case 1030:
        //         $position = 15;
        //         break;
        //     case 1100:
        //         $position = 20;
        //         break;
        //     case 1130:
        //         $position = 25;
        //         break;
        //     case 1200:
        //         $position = 30;
        //         break;
        //     case 1230:
        //         $position = 35;
        //         break;
        //     case 1300:
        //         $position = 40;
        //         break;
        //     case 1330:
        //         $position = 45;
        //         break;
        //     case 1400:
        //         $position = 50;
        //         break;
        //     case 1430:
        //         $position = 55;
        //         break;
        //     case 1500:
        //         $position = 60;
        //         break;
        //     case 1530:
        //         $position = 65;
        //         break;
        //     case 1600:
        //         $position = 70;
        //         break;
        //     case 1630:
        //         $position = 75;
        //         break;
        //     case 1700:
        //         $position = 80;
        //         break;
        //     case 1730:
        //         $position = 85;
        //         break;
        //     case 1800:
        //         $position = 90;
        //         break;
        //     case 1830:
        //         $position = 95;
        //         break;
        //     case 1900:
        //         $position = 100;
        //         break;
        //         // case 1930:
        //     $position = 1050;
        //     break;
        // case 2000:
        //     $position = 1100;
        //     break;
        //     default:
        //         $position = 1200;
        //         break;
        // }
        // }

        // // dd($batch);
        // dd($position);
        // if ($time == '9:00') {
        //     $postition = 0;
        // } elseif ($time <= '9:30') {
        //     $postition = 50;
        // }
        // } elseif ($time <= '10:00') {
        //     $postition = 100;
        // } elseif ($time <= '10:30') {
        //     $postition = 150;
        // } elseif ($time <= '11:00') {
        //     $postition = 200;
        // } elseif ($time <= '11:30') {
        //     $postition = 250;
        // } elseif ($time <= '12:00') {
        //     $postition = 300;
        // } elseif ($time <= '12:30') {
        //     $postition = 350;
        // } elseif ($time <= '13:00') {
        //     $postition = 400;
        // } elseif ($time <= '13:30') {
        //     $postition = 450;
        // } elseif ($time <= '14:00') {
        //     $postition = 500;
        // } elseif ($time <= '14:30') {
        //     $postition = 550;
        // } elseif ($time <= '15:00') {
        //     $postition = 600;
        // } elseif ($time <= '16:00') {
        //     $postition = 650;
        // } elseif ($time <= '16:30') {
        //     $postition = 700;
        // } elseif ($time <= '17:00') {
        //     $postition = 750;
        // } elseif ($time <= '17:30') {
        //     $postition = 800;
        // } elseif ($time <= '18:00') {
        //     $postition = 850;
        // } elseif ($time <= '18:30') {
        //     $postition = 900;
        // } elseif ($time <= '19:00') {
        //     $postition = 950;
        // } elseif ($time <= '19:30') {
        //     $postition = 1000;
        // } elseif ($time <= '20:00') {
        //     $postition = 1050;
        // }
        // dd($position);
        //     $time = Carbon::parse($batch->start_date_time)->format('g:i');
        // }
        // $postitionn = ['0', '50'];
        // $i = 0;
        // if ($time[$i]) {
        //     $position = $postitionn[$i];
        // }

        // for ($i = 9; $i <= 18; $i + 0.5) {
        //     $i;
        // }

        // $position = 100;
        // dd($ i);

        // print_r($batches);

        return view('teacher_calander.sessions', compact('batches'));
    }
    // public function sessionsTest(Request $request)
    // {
    //     $datepicker = today()->toDateString();
    //     // $batches = Batch::get();
    //     $batches = Batch::join('batch_session', 'batches.id', '=', 'batch_session.batch_id')
    //         ->select('batches.id', 'batches.duration_per_session', 'batch_session.name', 'batch_session.start_date_time')
    //         ->whereDate('batch_session.start_date_time', $datepicker)->get();
    //     return response()->json(['batches' => $batches]);
    // }

    //Testing functions here.

}
// }
