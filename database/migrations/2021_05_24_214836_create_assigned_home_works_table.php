<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAssignedHomeWorksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('assigned_home_works', function (Blueprint $table) {
            $table->id();
            $table->integer('session_id')->nullable();
            $table->mediumText('comment')->nullable();
            $table->string('points')->nullable();
            $table->string('type_of_homework')->nullable();
            $table->string('assigned_content')->nullable();
            $table->date('due_date')->nullable();
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
        Schema::dropIfExists('assigned_home_works');
    }
}
