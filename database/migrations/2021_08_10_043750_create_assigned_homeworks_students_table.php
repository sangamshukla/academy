<?php

use App\Models\AssignedHomeWork;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAssignedHomeworksStudentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('assigned_homework_students', function (Blueprint $table) {
            $table->id();
            $table->integer('assigned_home_work_id')->nullable();
            $table->string('type_of_homework')->nullable();
            $table->integer('student_id')->nullable();
            $table->boolean('is_approved')->nullable();
            $table->string('teacher_remark')->nullable();
            $table->string('assigned_content')->nullable();
            $table->string('given_marks')->nullable();
            $table->string('star_rating')->nullable();
            $table->string('comment_for_student')->nullable();
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
        Schema::dropIfExists('assigned_homeworks_students')();
    }
}
