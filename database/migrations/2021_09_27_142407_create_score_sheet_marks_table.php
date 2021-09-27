<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateScoreSheetMarksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('score_sheet_marks', function (Blueprint $table) {
             $table->id();
            $table->foreignId('enrolled_subject_id');
            $table->foreignId('enrolled_student_id');
            $table->integer('obtained_marks')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('score_sheet_marks');
    }
}
