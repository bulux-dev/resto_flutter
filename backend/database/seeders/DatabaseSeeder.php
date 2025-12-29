<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run(): void
    {
        $this->call([
            PlanSeeder::class,
            CurrencySeeder::class,
            PermissionSeeder::class,
            OptionTableSeeder::class,
            GatewaySeeder::class,
            BusinessCategorySeeder::class,
            BusinessSeeder::class,
            PlanSubscribeSeeder::class,
            StaffSeeder::class,
            UserSeeder::class,
            PartySeeder::class,
            UnitSeeder::class,
            PaymentTypeSeeder::class,
            IngredientSeeder::class,
            PurchaseSeeder::class,
            FeatureSeeder::class,
            InterfaceSeeder::class,
            TestimonialSeeder::class,
            BlogSeeder::class,
            FaqSeeder::class,
            MenuSeeder::class,
            CategorySeeder::class,
            TaxSeeder::class,
            ProductSeeder::class,
            ModifierGroupSeeder::class,
            ModifierSeeder::class,
            TableSeeder::class,
            CouponSeeder::class,
            SalesSeeder::class,
            QuotationSeeder::class,
            ExpenseCategorySeeder::class,
            ExpenseSeeder::class,
            IncomeCategorySeeder::class,
            IncomeSeeder::class,
            TransactionSeeder::class,
            DueCollectSeeder::class
        ]);
    }
}
