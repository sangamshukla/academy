<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TeacherPricing extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id',
        'teacher_currency',
        'price_for_one_student',
        'price_for_two_student',
        'price_for_class'
    ];
}
