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
    public function scopeHighest($query, $score_sheet_id)
    {
        // $result =$query->join('score_sheet_marks AS ssm', 'ssm.enrolled_subject_id', '=', 'enrolled_subjects.id')
        // ->join('enrolled_students AS es2', 'es2.id','=','ssm.enrolled_student_id')
        //             ->where('enrolled_subjects.score_sheet_id',$score_sheet_id)
        //             // ->groupBy('es2.user_id')
        //             // ->select('ssm.obtained_marks')
        //             ->get();
                 
        // return $result;
    }
  public function scores()
  {
      return $this->hasMany(ScoreSheetMark::class, 'enrolled_subject_id');
  }
}
