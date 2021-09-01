<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubjectFullMarks extends Model
{
    use HasFactory;
    protected $fillable = [
        'subject_id',
        'full_marks',
        'week_id',
    ];
    public function subject()
    {
        return $this->belongsTo(Subject::class);
    }
}
