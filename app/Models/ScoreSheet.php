<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\EnrolledStudent;

class ScoreSheet extends Model
{
    use HasFactory;
    protected $fillable=[
        'week_id',
        'class_master_id',
    ];
    public function enrolled_students()
    {
        return $this->hasMany(EnrolledStudent::class);
    }
    public function enrolled_subjects()
    {
        return $this->hasMany(EnrolledSubject::class);
    }
    public function week()
    {
        return $this->belongsTo(Week::class);
    }
    public function grade()
    {
        return $this->belongsTo(ClassMaster::class, 'class_master_id');
    }
}
