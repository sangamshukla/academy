<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class OfflineEnrolledStudent extends Model
{
    use HasFactory;
    /**
     * Fillable
     * @var string[]
     */
    protected $fillable = [
        'week_id',
        'student_id',
    ];
    
    /**
     * Relation With Week Table
     * @return BelongsTo
     */
    public function week()
    {
        return $this->belongsTo(Week::class, 'week_id');
    }

    /**
     * Relation with users table
     * @return BelongsTo
     */
    public function student()
    {
        return $this->belongsTo(User::class, 'student_id');
    }
}
