<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AssignedHomeWork extends Model
{
    const UPLOAD_PDF = "UPLOAD_PDF";
    const CHOOSE_PDF = "CHOOSE_PDF";
    const ADD_QUESTION = "ADD_QUESTION";

    use HasFactory;
    protected $fillable = [
        'session_id',
        'comment',
        'points',
        'type_of_homework',
        'assigned_content',
        'due_date',
    ];
    
    protected $casts = [
        'due_date' => 'datetime'
    ];
    
    public function studentlist()
    {
        return $this->hasMany(AssignedHomeWorkStudent::class, 'assigned_home_work_id');
    }
    public function homeworkstatus()
    {
        return $this->hasMany(AssignedHomeWorkAnswer::class, 'assigned_home_work_id');
    }
    public function homeworkName()
    {
        return $this->belongsTo(ResourceMaster::class, 'assigned_content');
    }
    public function session()
    {
        return $this->belongsTo(BatchSession::class, 'session_id');
    }
}
