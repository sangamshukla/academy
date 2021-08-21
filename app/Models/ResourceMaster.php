<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ResourceMaster extends Model
{
    use HasFactory;
    protected $fillable = [
        'pdf_path',
        'sub_topic_id',
        'pdf_name',
        'is_active'
    ];


    public function topic()
    {
        return $this->belongsTo(Topic::class, 'sub_topic_id');
    }
}
