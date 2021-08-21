<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderSessionMap extends Model
{
    use HasFactory;
    protected $fillable = [
        'batch_id',
        'session_id',
        'order_id'
    ];
    
    public function session()
    {
        return $this->belongsTo(BatchSession::class, 'session_id');
    }
    public function batch()
    {
        return $this->belongsTo(Batch::class, 'batch_id');
    }
    public function order()
    {
        return $this->belongsTo(OrderPayment::class, 'order_id');
    }
}
