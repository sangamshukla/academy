<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderPayment extends Model
{
    use HasFactory;
    protected $guarded = [];
    // protected $table='order';


    public function items()
    {
        return $this->hasMany(OrderItems::class, 'order_id');
    }
    
    public function student()
    {
        return $this->belongsTo(User::class, 'student_id');
    }
    public function ordered_sessions()
    {
        return $this->hasMany(OrderSessionMap::class, 'order_id');
    }
     public function transaction()
    {
        return $this->belongsTo(Transaction::class, 'order_id');
    }
}
