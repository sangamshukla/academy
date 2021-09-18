<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Kyslik\ColumnSortable\Sortable;


class OfflineScoreSheet extends Model
{
    use HasFactory;
    use Sortable;

    protected $fillable=[
        'subject_full_mark_id',
        'obtained_marks',
        'student_id',
        'week_id'
    ];
    public $sortable = ['id', 'subject_full_mark_id', 'obtained_marks','student_id', 'week_id', 'updated_at'];

    public function student()
    {
        return $this->belongsTo(User::class, 'id');
    }
}
