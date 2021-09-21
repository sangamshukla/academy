<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnToSubjectFullMarks extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('subject_full_marks', function (Blueprint $table) {
            $table->unsignedBigInteger('class_master_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('subject_full_marks', function (Blueprint $table) {
            $table->dropColumn('class_master_id');
        });
    }
}
