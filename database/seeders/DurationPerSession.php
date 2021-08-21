<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DurationPerSession extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('duration_per_sessions')->insert([
            'name' => '30',
        ]);
        DB::table('duration_per_sessions')->insert([
            'name' => '60',
        ]);
        DB::table('duration_per_sessions')->insert([
            'name' => '90',
        ]);
    }
}
