<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\MediaLibrary\HasMedia;
use AhmedAliraqi\LaravelMediaUploader\Entities\Concerns\HasUploader;
use Cviebrock\EloquentSluggable\Sluggable;

class Tender extends Model implements HasMedia

{
    use HasFactory, SoftDeletes, InteractsWithMedia, HasUploader, Sluggable;

    protected $guarded = ['id', 'created_at', 'updated_at'];


    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'title'
            ]
        ];
    }

    public function Office()
    {
        return $this->belongsTo(Telephone::class, 'telephone_id');
    }
}
