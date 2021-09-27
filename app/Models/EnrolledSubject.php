<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class EnrolledSubject extends Model
{
    use HasFactory;
    protected $fillable=[
        'score_sheet_id',
        'subject_id',
        'full_marks'

    ];
    public function subject()
    {
        return $this->belongsTo(Subject::class);
    }
}
