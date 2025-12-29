<?php

namespace App\Models;

use App\Models\Modifier;
<<<<<<< HEAD
use App\Models\Scopes\DataManager;
=======
// use App\Models\Scopes\DataManager; // Commented out to allow all users to view all products
>>>>>>> parent of e6fa8c1 (changes pending)
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Product extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'productName',
        'business_id',
        'user_id',
        'category_id',
        'menu_id',
        'preparation_time',
        'food_type',
        'price_type',
        'sales_price',
        'images',
        'description',
        'meta',
    ];

<<<<<<< HEAD
    protected static function booted()
    {
        static::addGlobalScope(new DataManager('products.view-all-data'));
    }
=======
    // Removed global scope to allow all users in the same business to view all products
    // regardless of who created them
    // protected static function booted()
    // {
    //     static::addGlobalScope(new DataManager('products.view-all-data'));
    // }
>>>>>>> parent of e6fa8c1 (changes pending)

    public function variations()
    {
        return $this->hasMany(ProductVariation::class, 'product_id');
    }

    public function menu(): BelongsTo
    {
        return $this->belongsTo(Menu::class);
    }

    public function category(): BelongsTo
    {
        return $this->belongsTo(Category::class);
    }

    public function modifiers()
    {
        return $this->hasMany(Modifier::class, 'product_id');
    }

    protected $casts = [
        'meta' => 'json',
        'images' => 'json',
        'business_id' => 'integer',
        'category_id' => 'integer',
        'menu_id' => 'integer',
        'sales_price' => 'double',
    ];
}
