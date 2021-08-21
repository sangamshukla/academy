<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
// use Laravel\Scout\Searchable;

class User extends Authenticatable
{
    use HasFactory, Notifiable;

    const ADMIN = 'admin';
    
    const TEACHER = 'teacher';

    const OPERATION = 'operation';
    
    const STUDENT = 'student';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'role',
        'contact_number',
        'about'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    // public function teacher()
    // {
    //     return $this->belongsTo(User::class, 'name');
    // }

    public function student()
    {
        return $this->hasOne(Student::class, 'user_id');
    }
    public function orders()
    {
        return $this->hasMany(OrderPayment::class, 'student_id');
    }
    public function sessions()
    {
        return $this->hasManyThrough(BatchSession::class, Batch::class, 'created_by', 'batch_id');
    }
}
