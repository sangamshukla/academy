<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TeachersProfiles extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create(
            'teacher_profiles',
            function (Blueprint $table) {
                $table->id();
                $table->string('teacher_profile_photo')->nullable();
                $table->foreignId('user_id')->unique()->constrained('users')->onUpdate('cascade');
                $table->string('gender')->nullable();
                $table->string('about')->nullable();
                $table->string('address')->nullable();
                $table->string('city')->nullable();
                $table->integer('zip_code')->nullable();
                $table->string('country')->nullable();
                $table->string('timezone')->nullable();
                $table->string('teacher_id_proof_image')->nullable();
                $table->timestamps();
            }
        );
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('teacher-profiles');
    }
}
