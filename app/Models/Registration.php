<?php

namespace App\Models;

use Spatie\MediaLibrary\HasMedia;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\InteractsWithMedia;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Spatie\MediaLibrary\MediaCollections\Models\Media;
use AhmedAliraqi\LaravelMediaUploader\Entities\Concerns\HasUploader;

class Registration extends Model implements HasMedia
{
    use HasFactory, InteractsWithMedia, SoftDeletes, HasUploader;

    protected $fillable = [
        'name',
        'father_name',
        'guardian_phone_no',
        'floor_id',
        'room_id',
        'amount',
        'cnic',
        'address',
        'image',
        'registration_date',
        'phone_no',
        'whatsapp_no',
        'dob',
        'email',
        'status',
    ];

    public function registerMediaConversions(Media $media = null): void
    {
        $this->addMediaConversion('thumb')
            ->setManipulations(['w' => 100, 'h' => 100])
            ->performOnCollections('images')
            ->nonQueued();
    }
    public function floor()
    {
        return $this->belongsTo(Floor::class);
    }
    public function room()
    {
        return $this->belongsTo(Room::class);
    }
    public function feeses()
    {
        return $this->hasMany(Fee::class);
    }
}