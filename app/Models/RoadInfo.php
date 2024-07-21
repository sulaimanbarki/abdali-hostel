<?php

namespace App\Models;

use App\Models\District;
use Spatie\MediaLibrary\HasMedia;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\InteractsWithMedia;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use AhmedAliraqi\LaravelMediaUploader\Entities\Concerns\HasUploader;

class RoadInfo extends Model  implements HasMedia
{
    use InteractsWithMedia, HasUploader, HasFactory;

    protected $fillable = [
        'district_id',
        'dated',
        'attachment',
    ];

    

    public function district()
    {
        return $this->belongsTo(District::class, 'district_id', 'district_id');
    }
}
