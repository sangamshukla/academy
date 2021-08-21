<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TeacherExpertise extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id',
        'video_src',
        'language_name',
        'language_proficiency'
    ];
}
