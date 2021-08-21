<?php

namespace App\Http\Controllers;

use App\Models\Batch;
use App\Models\Subject;
use App\Models\Topic;
use Carbon\Carbon;
use Illuminate\Http\JsonResponse;
use Illuminate\Contracts\Container\BindingResolutionException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class ApiController extends Controller
{
    public function getSubjects($id)
    {
        $subjects = Subject::where('class_master_id', $id)->get();

        return response()->json($subjects);
    }

    public function getTopics($id)
    {
        $topics = Topic::where('subject_id', $id)->get();
        return response()->json($topics);
    }

    /**
     * API For Login Pay Page
     * @param Request $request
     * @return JsonResponse
     * @throws BindingResolutionException
     */
    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required',
            'password' => 'required'
        ]);

        $login = Auth::attempt([
            'email' => $request->email,
            'password' => $request->password
        ]);
        if ($login) {
            return response()->json('success');
        }
        return response()->json('failed');
    }

    public function getAvailableTeacher($teacherId, $datetime, $duration = 30)
    {
       
        $dateFromDateTime = explode(" ", $datetime)[0];
        $statu = "YES";
        $batches = Batch::where('name', $teacherId)->get();
        foreach ($batches as $batch) {
            foreach ($batch->batchSession as $b) {
                $time = explode(" ", $datetime)[1];
                $hour = explode(":", $time)[0];
                if (Carbon::parse($b->start_date_time)->format('Y-m-d') == $dateFromDateTime) {
                    if (Carbon::parse($b->start_date_time)->format('H') == $hour) {
                        $statu = "NO";
                    }
                    // if($batch->id == 170){
                    //     dd(Carbon::parse($b->start_date_time)->addMinutes($batch->duration_per_session)->format('H'));
                    // }
                    if (Carbon::parse($b->start_date_time)->addMinutes($batch->duration_per_session)->format('H') == $hour) {
                        $statu = "NO";
                    }
                }
            }
        }
        return response()->json($statu);
    }
}
