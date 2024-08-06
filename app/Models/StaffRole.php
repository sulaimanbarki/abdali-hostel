<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StaffRole extends Model
{
    use HasFactory;
    protected $fillable = [
        'staff_name',

    ];


    /**
     * Get the staff that owns the StaffRole
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function staff()
    {
        return $this->hasMany(Staff::class, 'staff_role_id');
    }
}
