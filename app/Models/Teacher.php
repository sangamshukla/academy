<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Teacher extends Model
{
    use HasFactory;
    protected $guarded = [];


    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function userforemail()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function userforcontact()
    {
        return $this->belongsTo(User::class);
    }

    public function classmaster()
    {
        return $this->belongsTo(ClassMaster::class, 'class_master_id');
    }
}
