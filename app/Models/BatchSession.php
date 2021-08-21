<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BatchSession extends Model
{
    use HasFactory;
    protected $table = 'batch_session';
    protected $guarded=[];

    protected $casts  = [
        'start_date_time' => 'datetime'
    ];

      public function topics_name()
    {
        return  $this->belongsTo(BatchTopic::class, 'id');
    }

    public function singleTopic()
    {
        return $this->hasOne(BatchTopic::class, 'batch_session_id');
    }

    public function batch()
    {
        return $this->belongsTo(Batch::class);
    }
    public function topics()
    {
        return $this->hasOne(BatchTopic::class, 'batch_session_id');
    }
    
    public function enrolled()
    {
        return $this->hasMany(OrderSessionMap::class, 'session_id');
    }
}
