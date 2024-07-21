<?php

namespace App\Models;

use AhmedAliraqi\LaravelMediaUploader\Entities\Concerns\HasUploader;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\MediaLibrary\HasMedia;

class Telephone extends Model implements HasMedia
{
    use HasFactory, InteractsWithMedia, HasUploader;
    protected $table = 'telephones';
    protected $guarded = ['id', 'created_at', 'updated_at'];

    public function roads()
    {
        return $this->hasMany(Road::class, 'telephone_id');
    }
}
