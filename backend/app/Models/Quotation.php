<?php

namespace App\Models;

// use App\Models\Scopes\DataManager; // Commented out to allow all users to view all quotations
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Quotation extends Model
{
    use HasFactory;

    protected $fillable = [
        'business_id',
        'party_id',
        'address_id',
        'user_id',
        'tax_id',
        'coupon_id',
        'payment_type_id',
        'coupon_amount',
        'coupon_percentage',
        'discountAmount',
        'discountPercentage',
        'discount_type',
        'tax_amount',
        'totalAmount',
        'paidAmount',
        'dueAmount',
        'invoiceNumber',
        'quotationDate',
        'meta',
    ];

    // Removed global scope to allow all users in the same business to view all quotations
    // regardless of who created them
    protected static function booted()
    {
        // Intentionally empty - no global scopes applied
        // This ensures all users can see all quotations within their business
    }

    public function business()
    {
        return $this->belongsTo(Business::class);
    }

    public function details()
    {
        return $this->hasMany(QuotationDetails::class);
    }

    public function tax() : BelongsTo
    {
        return $this->belongsTo(Tax::class);
    }

    public function party() : BelongsTo
    {
        return $this->belongsTo(Party::class);
    }

    public function payment_type() : BelongsTo
    {
        return $this->belongsTo(PaymentType::class);
    }

    public function user() : BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    public function coupon() : BelongsTo
    {
        return $this->belongsTo(Coupon::class);
    }

    public function delivery_address() : BelongsTo
    {
        return $this->belongsTo(DeliveryAddress::class, 'address_id');
    }

    public static function boot()
    {
        parent::boot();

        static::creating(function ($model) {
            $id = Quotation::where('business_id', auth()->user()->business_id)->count() + 1;
            $model->invoiceNumber = "#" . $id;
        });
    }

    protected $casts = [
        'discountAmount' => 'double',
        'discountPercentage' => 'double',
        'coupon_amount' => 'double',
        'coupon_percentage' => 'double',
        'tax_amount' => 'double',
        'paidAmount' => 'double',
        'totalAmount' => 'double',
        'dueAmount' => 'double',
        'payment_type_id' => 'integer',
        'tax_id' => 'integer',
        'meta' => 'json',
        'business_id' => 'integer',
        'party_id' => 'integer',
        'address_id' => 'integer',
        'user_id' => 'integer',
    ];
}
