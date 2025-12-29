<?php

namespace Database\Seeders;

use App\Models\Product;
use App\Models\ProductVariation;
use Illuminate\Database\Seeder;

class ProductSeeder extends Seeder
{
    public function run(): void
    {
        $products = array(
            array('productName' => 'Spicy Noodles', 'business_id' => '1', 'category_id' => '6', 'menu_id' => '4', 'preparation_time' => '15', 'food_type' => 'veg', 'price_type' => 'variation', 'sales_price' => '0.00', 'images' => '["uploads\\/25\\/09\\/1757487251_68c12093abcd4.svg"]', 'description' => 'Very testy maxican noodles', 'meta' => NULL, 'created_at' => '2025-07-16 13:12:15', 'updated_at' => '2025-09-10 13:45:20'),
            array('productName' => 'Spicy Rice', 'business_id' => '1', 'category_id' => '5', 'menu_id' => '4', 'preparation_time' => '22', 'food_type' => 'non_veg', 'price_type' => 'variation', 'sales_price' => '0.00', 'images' => '["uploads\\/25\\/09\\/1757487055_68c11fcf6d1ee.svg"]', 'description' => 'Test Product', 'meta' => NULL, 'created_at' => '2025-07-16 13:12:22', 'updated_at' => '2025-09-10 13:44:18'),
            array('productName' => 'Chicken Burger', 'business_id' => '1', 'category_id' => '3', 'menu_id' => '2', 'preparation_time' => '10', 'food_type' => 'non_veg', 'price_type' => 'variation', 'sales_price' => '0.00', 'images' => '["uploads\\/25\\/09\\/1757486860_68c11f0c2ca0b.svg"]', 'description' => 'Smokey chicken cheese burger', 'meta' => NULL, 'created_at' => '2025-09-10 12:47:40', 'updated_at' => '2025-09-10 13:44:09'),
            array('productName' => 'Dum Biriyani', 'business_id' => '1', 'category_id' => '5', 'menu_id' => '4', 'preparation_time' => '30', 'food_type' => 'non_veg', 'price_type' => 'single', 'sales_price' => '370.00', 'images' => '["uploads\\/25\\/09\\/1757487366_68c121064e620.svg"]', 'description' => 'Our spacial checken dum biriyani', 'meta' => NULL, 'created_at' => '2025-09-10 12:56:06', 'updated_at' => '2025-09-10 13:44:01'),
            array('productName' => 'Lemon Juice', 'business_id' => '1', 'category_id' => '1', 'menu_id' => '6', 'preparation_time' => '5', 'food_type' => 'drink', 'price_type' => 'variation', 'sales_price' => '0.00', 'images' => '["uploads\\/25\\/09\\/1757487498_68c1218a92812.svg"]', 'description' => 'Best drink in summer', 'meta' => NULL, 'created_at' => '2025-09-10 12:58:18', 'updated_at' => '2025-09-10 15:22:21'),
            array('productName' => 'Special Tea', 'business_id' => '1', 'category_id' => '8', 'menu_id' => '6', 'preparation_time' => '18', 'food_type' => 'drink', 'price_type' => 'single', 'sales_price' => '125.00', 'images' => '["uploads\\/25\\/09\\/1757489143_68c127f7cf8d5.png"]', 'description' => 'Very testy tea', 'meta' => NULL, 'created_at' => '2025-09-10 13:17:57', 'updated_at' => '2025-09-10 13:43:18'),
            array('productName' => 'Chicken Pulao', 'business_id' => '1', 'category_id' => '7', 'menu_id' => '4', 'preparation_time' => NULL, 'food_type' => 'non_veg', 'price_type' => 'single', 'sales_price' => '370.00', 'images' => '["uploads\\/25\\/09\\/1759141755_68da5f7ba4930.png"]', 'description' => NULL, 'meta' => NULL, 'created_at' => '2025-09-29 16:29:15', 'updated_at' => '2025-09-29 16:29:15'),
            array('productName' => 'Shahi Kabab', 'business_id' => '1', 'category_id' => '7', 'menu_id' => '4', 'preparation_time' => NULL, 'food_type' => 'non_veg', 'price_type' => 'single', 'sales_price' => '770.00', 'images' => '["uploads\\/25\\/09\\/1759141914_68da601a32133.png"]', 'description' => NULL, 'meta' => NULL, 'created_at' => '2025-09-29 16:31:54', 'updated_at' => '2025-09-29 16:31:54'),
            array('productName' => 'Veg Pizza', 'business_id' => '1', 'category_id' => '2', 'menu_id' => '1', 'preparation_time' => NULL, 'food_type' => 'veg', 'price_type' => 'single', 'sales_price' => '475.00', 'images' => '["uploads\\/25\\/09\\/1759141948_68da603c97688.png"]', 'description' => NULL, 'meta' => NULL, 'created_at' => '2025-09-29 16:32:28', 'updated_at' => '2025-09-29 16:32:28'),
            array('productName' => 'Special Pasta', 'business_id' => '1', 'category_id' => '6', 'menu_id' => '4', 'preparation_time' => NULL, 'food_type' => 'others', 'price_type' => 'single', 'sales_price' => '335.00', 'images' => '["uploads\\/25\\/09\\/1759141983_68da605fac147.png"]', 'description' => NULL, 'meta' => NULL, 'created_at' => '2025-09-29 16:33:03', 'updated_at' => '2025-09-29 16:42:32'),
            array('productName' => 'Sunrise Cocktail', 'business_id' => '1', 'category_id' => '1', 'menu_id' => '6', 'preparation_time' => NULL, 'food_type' => 'drink', 'price_type' => 'single', 'sales_price' => '910.00', 'images' => '["uploads\\/25\\/09\\/1759142351_68da61cf37edf.png"]', 'description' => NULL, 'meta' => NULL, 'created_at' => '2025-09-29 16:39:11', 'updated_at' => '2025-09-29 16:39:11'),
            array('productName' => 'Basmoti Rice', 'business_id' => '1', 'category_id' => '5', 'menu_id' => '4', 'preparation_time' => NULL, 'food_type' => 'others', 'price_type' => 'single', 'sales_price' => '150.00', 'images' => '["uploads\\/25\\/09\\/1759142765_68da636d28cbf.png"]', 'description' => NULL, 'meta' => NULL, 'created_at' => '2025-09-29 16:46:05', 'updated_at' => '2025-09-29 16:46:05')
        );

        Product::insert($products);

        $product_variations = array(
            array('product_id' => '1', 'name' => 'Small', 'price' => '220.00', 'created_at' => '2025-09-10 12:54:11', 'updated_at' => '2025-09-10 12:54:11'),
            array('product_id' => '1', 'name' => 'Large', 'price' => '340.00', 'created_at' => '2025-09-10 12:54:11', 'updated_at' => '2025-09-10 12:54:11'),
            array('product_id' => '3', 'name' => 'Medium', 'price' => '250.00', 'created_at' => '2025-09-10 13:27:46', 'updated_at' => '2025-09-10 13:27:46'),
            array('product_id' => '3', 'name' => 'Large', 'price' => '430.00', 'created_at' => '2025-09-10 13:27:46', 'updated_at' => '2025-09-10 13:27:46'),
            array('product_id' => '2', 'name' => 'Small', 'price' => '210.00', 'created_at' => '2025-09-10 13:32:04', 'updated_at' => '2025-09-10 13:32:04'),
            array('product_id' => '2', 'name' => 'Large', 'price' => '450.00', 'created_at' => '2025-09-10 13:32:04', 'updated_at' => '2025-09-10 13:32:04'),
            array('product_id' => '5', 'name' => 'Normal Glass', 'price' => '169.00', 'created_at' => '2025-09-10 15:22:21', 'updated_at' => '2025-09-10 15:22:21'),
            array('product_id' => '5', 'name' => 'Premium Glass', 'price' => '249.00', 'created_at' => '2025-09-10 15:22:21', 'updated_at' => '2025-09-10 15:22:21')
        );

        ProductVariation::insert($product_variations);
    }
}
