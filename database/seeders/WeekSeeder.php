<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class WeekSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('weeks')->insert([
            'week_name' => 'Week1',
        ]);
        DB::table('weeks')->insert([
            'week_name' => 'Week2',
        ]);
        DB::table('weeks')->insert([
            'week_name' => 'Week3',
        ]);
        DB::table('weeks')->insert([
            'week_name' => 'Week4',
        ]);
        DB::table('weeks')->insert([
            'week_name' => 'Week5',
        ]);
        DB::table('weeks')->insert([
            'week_name' => 'Week6',
        ]);
        DB::table('weeks')->insert([
            'week_name' => 'Week7',
        ]);
        DB::table('weeks')->insert([
            'week_name' => 'Week8',
        ]);
        DB::table('weeks')->insert([
            'week_name' => 'Week9',
        ]);
        DB::table('weeks')->insert([
            'week_name' => 'week10',
        ]);
    }
}
