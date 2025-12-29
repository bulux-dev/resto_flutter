<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Table extends Model
{
    use HasFactory;

    protected $fillable = [
        'business_id',
        'name',
        'capacity',
        'is_booked',
        'status'
    ];

    public function kot_ticket()
    {
        return $this->hasOne(KotTicket::class);
    }

    protected $casts = [
        'capacity' => 'integer',
        'business_id' => 'integer',
        'is_booked' => 'integer',
        'status' => 'integer',
    ];
}
