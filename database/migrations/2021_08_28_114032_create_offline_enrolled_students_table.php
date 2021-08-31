<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOfflineEnrolledStudentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('offline_enrolled_students', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('week_id')->nullable();
            $table->unsignedBigInteger('student_id');
            $table->timestamps();


            $table
                ->foreign('week_id')
                ->references('id')
                ->on('weeks')
                ->onDelete('cascade')
                ->onUpdate('cascade');
            $table
                ->foreign('student_id')
                ->references('id')
                ->on('users')
                ->onDelete('cascade')
                ->onUpdate('cascade');
            ;
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('offline_enrolled_students');
    }
}
