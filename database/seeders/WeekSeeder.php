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
            'week_name' => 'Week 1',
        ]);
        DB::table('weeks')->insert([
            'week_name' => 'Week 2',
        ]);
        DB::table('weeks')->insert([
            'week_name' => 'Week 3',
        ]);
        DB::table('weeks')->insert([
            'week_name' => 'Week 4',
        ]);
        DB::table('weeks')->insert([
            'week_name' => 'Week 5',
        ]);
        DB::table('weeks')->insert([
            'week_name' => 'Week 6',
        ]);
        DB::table('weeks')->insert([
            'week_name' => 'Week 7',
        ]);
        DB::table('weeks')->insert([
            'week_name' => 'Week 8',
        ]);
        DB::table('weeks')->insert([
            'week_name' => 'Week 9',
        ]);
        DB::table('weeks')->insert([
            'week_name' => 'week 10',
        ]);
    }
}
