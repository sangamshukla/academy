<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(ClassMaster::class);
        $this->call(ClassSettings::class);
        $this->call(DurationPerSession::class);
        $this->call(AdminSeeder::class);
        // \App\Models\User::factory(10)->create();
    }
}
