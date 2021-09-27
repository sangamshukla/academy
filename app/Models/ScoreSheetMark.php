<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ScoreSheetMark extends Model
{
    use HasFactory;
    protected $fillable=[
        'enrolled_subject_id',
        'enrolled_student_id',
        'obtained_marks',
    ];
}
