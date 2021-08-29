<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSubjectFullMarksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('subject_full_marks', function (Blueprint $table) {
            $table->id();

            $table->unsignedBigInteger('subject_id');
            $table->unsignedFloat('full_marks');
            $table->unsignedBigInteger('week_id');
            $table->timestamps();


            $table->foreign('subject_id')->references('id')->on('subjects')
            ->onDelete('cascade')
            ->onUpdate('cascade');

            $table->foreign('week_id')->references('id')->on('weeks')
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
        Schema::dropIfExists('subject_full_marks');
    }
}
