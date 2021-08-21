<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCreatedSessionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('created_sessions', function (Blueprint $table) {
            $table->id();
            $table->integer('session_id');
            $table->string('meeting_id');
            $table->text('meeting_start_url');
            $table->text('meeting_join_url');
            $table->string('password');
            $table->integer('class_type');
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
        Schema::dropIfExists('created_sessions');
    }
}
