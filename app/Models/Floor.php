<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Floor extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $fillable = [
        'floor_name',
        'description',
        'total_rooms',
    ];
}
