<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TeacherExperience extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id',
        'experience_type',
        'experience_title',
        'experience_org',
        'experience_location',
        'experience_startendyear',
        'experience_certification'
    ];
}
