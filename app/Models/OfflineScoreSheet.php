<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OfflineScoreSheet extends Model
{
    use HasFactory;
    protected $fillable=[
        'subject_full_mark_id',
        'obtained_marks',
        'student_id'
    ];
}
