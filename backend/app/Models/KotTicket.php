<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class KotTicket extends Model
{
    use HasFactory;

    protected $fillable = [
        'business_id',
        'table_id',
        'bill_no',
        'items',
        'total_amount',
    ];

    public function table()
    {
        return $this->belongsTo(Table::class);
    }

    protected $casts = [
        'business_id' => 'integer',
        'table_id' => 'integer',
        'total_amount' => 'double',
        'items' => 'json',
    ];
}
