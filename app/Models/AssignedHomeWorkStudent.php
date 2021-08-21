<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AssignedHomeWorkStudent extends Model
{
    use HasFactory;
    protected $table = "assigned_homework_students";
    protected $guarded = [];

    public function homeWork()
    {
        return $this->belongsTo(AssignedHomeWork::class, 'assigned_home_work_id');
    }
    public function session()
    {
        return $this->belongsTo(BatchSession::class, 'session_id');
    }
    public function homework_Name()
    {
        return $this->belongsTo(ResourceMaster::class, 'assigned_content');
    }
      public function student()
    {
        return $this->belongsTo(User::class, 'student_id');
    }
     public function answer()
    {
        return $this->hasOne(AssignedHomeWorkAnswerMap::class, 'assigned_home_work_student_id');
    }
}
