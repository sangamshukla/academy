<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnToOfflineScoreSheets extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('offline_score_sheets', function (Blueprint $table) {
            $table->unsignedBigInteger('week_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('offline_score_sheets', function (Blueprint $table) {
            $table->dropColumn('week_id');
        });
    }
}
