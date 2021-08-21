<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ClassSettings extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('class_settings')->insert([
            'name' => 'Prabhat Morning Math Class',
        ]);

        DB::table('class_settings')->insert([
            'name' => 'Ankit Morning English Class',
        ]);

        DB::table('class_settings')->insert([
            'name' => 'Ravi Evening Computer Class',
        ]);

        DB::table('class_settings')->insert([
            'name' => 'Amit Evening Php Class',
        ]);
        
        DB::table('class_settings')->insert([
            'name' => 'Others',
        ]);
    }
}
