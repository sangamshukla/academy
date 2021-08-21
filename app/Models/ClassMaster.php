<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ClassMaster extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function subjects()
    {
        return $this->hasMany(Subject::class, 'class_master_id');
    }
}
