<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Fee extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $fillable = [
        'registration_id',
        'fee_date',
        'amount',
        'paid_amount',
        'status',
    ];

    public function registration()
    {
        return $this->belongsTo(Registration::class);
    }
    public function room()
    {
        return $this->belongsTo(Room::class);
    }
    public function floor()
    {
        return $this->belongsTo(Floor::class);
    }

    protected $dates = [
        'fee_date',
    ];
    
}
