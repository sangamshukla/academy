<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnToAssignedHomeWorkAnswerMaps extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('assigned_home_work_answer_maps', function (Blueprint $table) {
            $table->string('checked_content')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('assigned_home_work_answer_maps', function (Blueprint $table) {
            $table->dropColumn('checked_content');
        });
    }
}
