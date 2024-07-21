<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Telephone;
use Illuminate\Database\Eloquent\SoftDeletes;

class Road extends Model
{
    use HasFactory, SoftDeletes;

    protected $guarded = ['id', 'created_at', 'updated_at'];
    public function telephone(){
        return $this->belongsTo(Telephone::class);
    }
}
