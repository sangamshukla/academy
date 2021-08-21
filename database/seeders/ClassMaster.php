<?php

namespace Database\Seeders;

use App\Models\ClassMaster as ModelsClassMaster;
use App\Models\Subject;
use App\Models\Topic;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ClassMaster extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $classmaster1 = ModelsClassMaster::create([
            'name' => 'Year 1'
        ]);
        $subject1 = Subject::create([
            'name' => 'English',
            'class_master_id' => $classmaster1->id
        ]);
        $subject2 = Subject::create([
            'name' => 'Maths',
            'class_master_id' => $classmaster1->id
        ]);
        Topic::create([
            'name' => 'Tense',
            'subject_id' => $subject1->id
        ]);
        Topic::create([
            'name' => 'Voice',
            'subject_id' => $subject1->id
        ]);
        Topic::create([
            'name' => 'Numbers',
            'subject_id' => $subject2->id
        ]);
        Topic::create([
            'name' => 'Counting',
            'subject_id' => $subject2->id
        ]);


        $classmaster2 = ModelsClassMaster::create([
            'name' => 'Year 2'
        ]);
        $subject3 = Subject::create([
            'name' => 'English',
            'class_master_id' => $classmaster2->id
        ]);
        $subject4 = Subject::create([
            'name' => 'Physics',
            'class_master_id' => $classmaster2->id
        ]);
        Topic::create([
            'name' => 'Narration',
            'subject_id' => $subject3->id
        ]);
        Topic::create([
            'name' => 'Voice',
            'subject_id' => $subject3->id
        ]);
        Topic::create([
            'name' => 'Introduction',
            'subject_id' => $subject4->id
        ]);
        Topic::create([
            'name' => 'Gravity',
            'subject_id' => $subject4->id
        ]);
    }
}
