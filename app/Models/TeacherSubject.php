<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TeacherSubject extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id',
        'teacher_age_group',
        'teacher_class_id',
        'teacher_subject_id'
    ];
}
