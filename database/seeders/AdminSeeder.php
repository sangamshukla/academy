<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class AdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'name' => 'Andrew Smith',
            'email' => 'admin@wallingtonacademy.co.uk',
            'email_verified_at' => now(),
            'password' => Hash::make('wallington'),
            'role' => User::ADMIN,
            'created_at' => now(),
            'updated_at' => now()
        ]);


        DB::table('users')->insert([
            'name' => 'Mike Canery',
            'email' => 'teacher@wallingtonacademy.co.uk',
            'email_verified_at' => now(),
            'password' => Hash::make('wallington'),
            'role' => User::TEACHER,
            'created_at' => now(),
            'updated_at' => now()
        ]);
        DB::table('teachers')->insert([
            'user_type' => 'Mike Canery',
            'class_master_id' => '1',
            'user_id' => '2',
            'created_at' => now(),
            'updated_at' => now()
        ]);

        DB::table('users')->insert([
            'name' => 'Chuck Larabee',
            'email' => 'operation@wallingtonacademy.co.uk',
            'email_verified_at' => now(),
            'password' => Hash::make('wallington'),
            'role' => User::OPERATION,
            'created_at' => now(),
            'updated_at' => now()
        ]);

        DB::table('users')->insert([
            'name' => 'Rishu',
            'email' => 'student@wallingtonacademy.co.uk',
            'email_verified_at' => now(),
            'password' => Hash::make('wallington'),
            'role' => User::STUDENT,
            'created_at' => now(),
            'updated_at' => now()
        ]);
        DB::table('students')->insert([
            'user_id' => '4',
            'class_master_id' => '1',
            'created_at' => now(),
            'updated_at' => now()
        ]);
        DB::table('teacher_profiles')->insert([
            'user_id' => '2',
            'created_at' => now(),
            'updated_at' => now()
        ]);
    }
}
