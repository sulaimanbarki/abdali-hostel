<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Room extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $fillable = [
        'room_name',
        'floor_id',
        'room_type',
        'no_of_seats',
        'no_of_seats_available',
        'status',
        'price',
    ];

    public function floor()
    {
        return $this->belongsTo(Floor::class);
    }
}
