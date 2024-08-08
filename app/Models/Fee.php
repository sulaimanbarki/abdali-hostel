<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\MediaLibrary\HasMedia;

class Fee extends Model  implements HasMedia
{
    use HasFactory, InteractsWithMedia;
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

    /**
     * Get all of the tansections for the Fee
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function tansections()
    {
        return $this->hasMany(Transaction::class);
    }
    protected $dates = [
        'fee_date',
    ];
}