<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\User;
use App\Models\Week;
use App\Models\Subject;

class ScoreSheetTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function test_any_user_can_not_visit_score_sheet()
    {
        $user=User::factory()->create();
        $response=$user->role;
        if($response=='admin')
        {
            $able=$this->actingAs($user)->get('/full-marks');
            $able->assertStatus(200);
        }
        else{
            $able=$this->actingAs($user)->get('/full-marks');
            $able->assertStatus(401);
        }
    }
    public function test_user_sees_all_subjects()
    {
        $subjects=Subject::all();
        $user=User::factory()->create();
        $response=$this->actingAs($user)->get('/full-marks');
        foreach ($subjects as $subject) {
            # code...
            $response->assertSee($subject->name);
        }
    }
    public function user_is_able_to_submit_full_marks()
    {
        $subjects=Subject::select('id')->get();
        $user=User::factory()->create();
        // dd($subjects);
        foreach ($subjects as $subject) {
            // dd($subject->id);
        $response=$this->actingAs($user)->post('/full-marks',[
                'subject_id'=>$subject->id,
                'full_marks'=>20,
                'week_id'=>1
            ]);
            $response->assertStatus(200);
        }
    }
}
