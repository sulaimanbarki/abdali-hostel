<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\MediaLibrary\HasMedia;
use AhmedAliraqi\LaravelMediaUploader\Entities\Concerns\HasUploader;

class Team extends Model implements HasMedia
{
    use HasFactory, SoftDeletes, InteractsWithMedia, HasUploader;

    protected $guarded = ['id', 'created_at', 'updated_at'];
    public function registerMediaConversions($media = null): void
    {
        $this->addMediaConversion('resize')
            ->width(255)
            ->height(255)
            ->performOnCollections('team');
    }
}
