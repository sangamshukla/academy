<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Week extends Model
{
    use HasFactory;

    protected $fillable = [
        'week_name',
    ];

    /**
     * relation with offline enrolled students
     * @return HasMany
     */
    public function offlineEnrolledStudents()
    {
        return $this->hasMany(OfflineEnrolledStudent::class, 'week_id');
    }

    /**
     * relation with subject full marks table
     * @return HasMany
     */
    public function subjectFullMarks()
    {
        return $this->hasMany(SubjectFullMarks::class, 'week_id');
    }
}
