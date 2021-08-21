<?php

use App\Models\Batch;
use App\Models\WeeklyOff;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBatchLiveTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('batch_live', function (Blueprint $table) {
            $table->id();
            $table->foreignIdFor(Batch::class);
            $table->foreignIdFor(WeeklyOff::class);
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
        Schema::dropIfExists('batch_live');
    }
}
