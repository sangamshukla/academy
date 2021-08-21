<?php

use App\Models\AssignedHomeWork;
use App\Models\AssignedHomeWorkStudent;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHomeWorkAnswerMapsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('home_work_answer_maps', function (Blueprint $table) {
            $table->id();
            $table->foreignId(AssignedHomeWork::class);
            $table->foreignId(AssignedHomeWorkStudent::class);
            $table->string('image_path');
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
        Schema::dropIfExists('home_work_answer_maps');
    }
}
