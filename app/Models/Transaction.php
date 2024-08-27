<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Transaction extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $fillable = [
        'transection_type',
        'transection_type_id',
        'amount',
        'transection_date',
        'description',
        'type',
        'status',
    ];


    public function fee()
    {
        return $this->belongsTo(Fee::class);
    }
    public function staff()
    {
        return $this->belongsTo(Staff::class,  'transection_type_id');
    }
}
