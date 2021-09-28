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
    public function students()
    {
        return $this->belongsTo(EnrolledStudent::class, 'enrolled_student_id');
    }
     public function scopeClassHighest($query, $enrolled_subject_id)
    {
     $results=$query->where('enrolled_subject_id', $enrolled_subject_id)->max('obtained_marks');
        return $results;
    }

     public function scopeClassAverage($query, $enrolled_subject_id)
    {
        $results=$query->where('enrolled_subject_id', $enrolled_subject_id)->avg('obtained_marks');
        return $results;
    }
     public function scopeClassLowest($query, $enrolled_subject_id)
    {
        $results=$query->where('enrolled_subject_id', $enrolled_subject_id)->min('obtained_marks');
        return $results;
    }
     public function scopeScore($query, $enrolled_subject_id, $enrolled_student_id)
    {
        $results=$query->where('enrolled_subject_id', $enrolled_subject_id)->where('enrolled_student_id', $enrolled_student_id)
        ->get();
        $collectionins=$results->map(function ($item, $key) {
            return ($item->obtained_marks);
            });
        return $collectionins;
    }
}

