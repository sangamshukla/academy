<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AssignedHomeWorkAnswer extends Model
{
    use HasFactory;
    protected $guarded = [];
    public function homework()
    {
        return $this->belongsTo(AssignedHomeWork::class, 'assigned_home_work_id');
    }
    
}
