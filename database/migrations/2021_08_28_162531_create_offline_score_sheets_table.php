<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOfflineScoreSheetsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('offline_score_sheets', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('subject_full_mark_id');
            $table->unsignedFloat('obtained_marks');
            $table->unsignedBigInteger('student_id');
            $table->timestamps();


            $table->foreign('subject_full_mark_id')
                ->references('id')
                ->on('subject_full_marks')
                ->onDelete('cascade')
                ->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('offline_score_sheets');
    }
}
