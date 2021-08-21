<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function classmaster()
    {
        return $this->belongsTo(ClassMaster::class, 'class_master_id');
    }
    public function user()
    {
        return $this->belongsTo(User::class, 'id');
    }
}
