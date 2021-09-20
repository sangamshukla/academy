<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Kyslik\ColumnSortable\Sortable;
use App\Http\Models\Weeks;
class SubjectFullMarks extends Model
{
    use HasFactory;
    use Sortable;
    protected $fillable = [
        'subject_id',
        'full_marks',
        'week_id',
        'class_master_id',
    ];
    protected $sortable = [
        'subject_id',
        'full_marks',
        'week_id',
        'class_master_id',
    ];
    public function subject()
    {
        return $this->belongsTo(Subject::class);
    }
    public function marks()
    {
        return $this->hasMany(OfflineScoreSheet::class, 'subject_full_mark_id');
    }
    public function week_name()
    {
        return $this->belongsTo(Week::class, 'week_id');
    }
}
