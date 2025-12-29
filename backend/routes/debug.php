<?php

use Illuminate\Support\Facades\Route;
use App\Models\Product;

Route::get('/debug/products', function () {
    $user = auth()->user();
    if (!$user) {
        return response()->json(['error' => 'Not authenticated'], 401);
    }
    
    $allProducts = Product::all(['id', 'productName', 'user_id', 'business_id', 'created_at']);
    $userBizProducts = Product::where('business_id', $user->business_id)->get(['id', 'productName', 'user_id', 'business_id', 'created_at']);
    
    return response()->json([
        'authenticated_user' => [
            'id' => $user->id,
            'name' => $user->name,
            'business_id' => $user->business_id,
            'role' => $user->role,
        ],
        'all_products_count' => $allProducts->count(),
        'business_products_count' => $userBizProducts->count(),
        'all_products' => $allProducts,
        'business_products' => $userBizProducts,
    ]);
});
