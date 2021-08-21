<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use phpDocumentor\Reflection\Types\ClassString;

class Batch extends Model
{
    use HasFactory;
    public $casts = [
        'batch_start_date' => 'datetime'
    ];
    protected $guarded = [];


    public function classmaster()
    {
        return $this->belongsTo(ClassMaster::class, 'class_master_id');
    }
    public function subject()
    {
        return $this->belongsTo(Subject::class, 'subject_id');
    }

    public function classSettings()
    {
        return $this->belongsTo(ClassSettings::class, 'class_settings_id');
    }

    public function teacher()
    {
        return $this->belongsTo(User::class, 'name');
    }
    
    public function assignteacher()
    {
        return $this->belongsTo(User::class, 'name');
    }

    public function batchSession()
    {
        return $this->hasMany(BatchSession::class, 'batch_id');
    }

    public function zoom()
    {
        return $this->hasOne(CreatedSessions::class, 'session_id');
    }
    public function items()
    {
        return $this->hasMany(OrderItems::class, 'batch_id');
    }
}
