<?php

namespace App\Models;

use AhmedAliraqi\LaravelMediaUploader\Entities\Concerns\HasUploader;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\MediaLibrary\InteractsWithMedia;

class EnlistedDeparment extends Model
{
    use HasFactory, SoftDeletes, InteractsWithMedia, HasUploader;
    protected $table= 'enlisted_departments';
    protected $guarded = ['id', 'created_at', 'updated_at'];
}
