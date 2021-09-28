<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class EnrolledStudent extends Model
{
    use HasFactory;
    protected $fillable=[
        'score_sheet_id',
        'user_id',
    ];
    public function enrolled_subject()
    {
        return $this->hasMany(EnrolledSubject::class);
    }
    public function student()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
    public function scoresheet()
    {
        return $this->belongsTo(ScoreSheet::class, 'score_sheet_id');
    }
    public function marks()
    {
        return $this->hasMany(ScoreSheetMark::class, 'enrolled_student_id');
    }
}
