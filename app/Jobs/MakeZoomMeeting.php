<?php

namespace App\Jobs;

use App\Models\Batch;
use App\Models\BatchSession;
use App\Models\BatchTopic;
use App\Models\CreatedSessions;
use App\Traits\ZoomMeetingTrait;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class MakeZoomMeeting implements ShouldQueue
{
    const MEETING_TYPE_INSTANT = 1;
    const MEETING_TYPE_SCHEDULE = 2;
    const MEETING_TYPE_RECURRING = 3;
    const MEETING_TYPE_FIXED_RECURRING_FIXED = 8;
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels, ZoomMeetingTrait;

    public $sessionId;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($sessionId)
    {
        $this->sessionId = $sessionId;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $sessions = BatchSession::where('batch_id', $this->sessionId)->get();
        $batch = Batch::find($this->sessionId);
        foreach ($sessions as $session) {
            $batchTopic = BatchTopic::where('batch_session_id', $session->id)->first();
            $data = $this->create([
                'topic' => $session->name. ' '.$batchTopic->topic->name,
                'start_time' => $session->start_date_time,
                'duration' => $batch->duration_per_session,
                'host_video' => 1,
                'participant_video' => 1
            ]);
            CreatedSessions::create([
                'session_id' => $batch->id,
                'meeting_id'=> $data['data']['id'],
                'meeting_start_url'=> $data['data']['start_url'],
                'meeting_join_url'=>$data['data']['join_url'],
                'password'=> $data['data']['password'],
                'class_type' => 1 // clear this
            ]);
        }
    }
}
