<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Staff extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'name',
        'father_name',
        'cnic',
        'address',
        'image',
        'phone_no',
        'email',
        'status',
        'staff_role_id'
    ];

    public function staffRole()
    {
        return $this->belongsTo(StaffRole::class, 'staff_role_id');
    }
}
