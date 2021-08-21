<?php

use App\Models\ClassMaster;
use App\Models\Subject;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBatchesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */

    // for class
    public function up()
    {
        Schema::create('batches', function (Blueprint $table) {
            $table->id();
            $table->string('name')->nullable();
            $table->string('batch_price_per_session')->nullable();
            $table->string('teacher_available_status')->nullable();
            $table->string('no_of_seats')->nullable();
            $table->dateTime('batch_start_date'); 
            $table->dateTime('batch_end_date')->nullable();           
            $table->foreignIdFor(ClassMaster::class);
            $table->foreignIdFor(Subject::class);
            $table->string('status')->nullable();
            $table->string('location')->nullable();
            $table->string('sell_each_session')->default('0');
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
        Schema::dropIfExists('batches');
    }
}
