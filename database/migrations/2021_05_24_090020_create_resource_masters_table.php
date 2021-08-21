<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateResourceMastersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('resource_masters', function (Blueprint $table) {
            $table->id();
            $table->string('pdf_path')->nullable();
            $table->integer('sub_topic_id')->nullable();
            $table->integer('is_active')->default("0");
            $table->string('pdf_name')->nullable();
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
        Schema::dropIfExists('resource_masters');
    }
}
