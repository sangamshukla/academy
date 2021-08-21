<?php

namespace App\Http\Controllers;

use App\Traits\ZoomMeetingTrait;
use Illuminate\Http\Request;

class ZoomController extends Controller
{
    use ZoomMeetingTrait;
    const MEETING_TYPE_INSTANT = 1;
    const MEETING_TYPE_SCHEDULE = 2;
    const MEETING_TYPE_RECURRING = 3;
    const MEETING_TYPE_FIXED_RECURRING_FIXED = 8;

    public function zoom()
    {
        $data = $this->create([
            'topic' => 'Test Meeting',
            'start_time' => '2020-04-10 19:00:02',
            'duration' => '30',
            'host_video' => 1,
            'participant_video' => 1
        ]);
        // dd($data);

        // return redirect()->route('meetings.index');
    }
}
