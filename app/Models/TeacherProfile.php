<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TeacherProfile extends Model
{
    use HasFactory;
    protected $fillable = [
        'teacher_profile_photo',
        'user_id',
        'gender',
        'about',
        'address',
        'city',
        'zip_code',
        'country',
        'timezone',
        'teacher_id_proof_image'
    ];
}
