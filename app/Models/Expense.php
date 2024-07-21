<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Expense extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = ['expense_head_id', 'amount', 'paying_date', 'description'];

    public function expenseHead()
    {
        return $this->belongsTo(ExpenseHead::class);
    }
}
