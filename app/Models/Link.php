<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\MediaLibrary\HasMedia;
use AhmedAliraqi\LaravelMediaUploader\Entities\Concerns\HasUploader;


class Link extends Model implements HasMedia
{
    use HasFactory, SoftDeletes, InteractsWithMedia, HasUploader;
    protected $guarded = ['id', 'created_at', 'updated_at'];
}
