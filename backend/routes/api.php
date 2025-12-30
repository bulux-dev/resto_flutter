<?php

use App\Http\Controllers\Api as Api;
use Illuminate\Support\Facades\Route;

Route::prefix('v1')->group(function () {

    Route::post('/sign-in', [Api\Auth\AuthController::class, 'login']);
    Route::post('/submit-otp', [Api\Auth\AuthController::class, 'submitOtp']);
    Route::post('/sign-up', [Api\Auth\AuthController::class, 'signUp']);
    Route::post('/resend-otp', [Api\Auth\AuthController::class, 'resendOtp']);

    Route::post('/send-reset-code',[Api\Auth\AcnooForgotPasswordController::class, 'sendResetCode']);
    Route::post('/verify-reset-code',[Api\Auth\AcnooForgotPasswordController::class, 'verifyResetCode']);
    Route::post('/password-reset',[Api\Auth\AcnooForgotPasswordController::class, 'resetPassword']);

    Route::group(['middleware' => ['auth:sanctum']], function () {

        Route::get('summary', [Api\StatisticsController::class, 'summary']);
        Route::get('dashboard-chart', [Api\StatisticsController::class, 'dashboard']);

        Route::get('dues-list', [Api\AcnooDueController::class, 'duesList']);

        Route::apiResource('parties', Api\PartyController::class);
        Route::get('parties/view-ledger/{id}', [Api\PartyController::class, 'view_ledger']);
        Route::apiResource('users', Api\AcnooUserController::class)->except('show');
        Route::apiResource('units', Api\UnitController::class)->except('show');
        Route::apiResource('menus', Api\AcnooMenuController::class)->except('show');
        Route::apiResource('categories', Api\AcnooCategoryController::class)->except('show');
        Route::apiResource('tables', Api\AcnooTableController::class)->except('show');
        Route::apiResource('products', Api\AcnooProductController::class);
        Route::apiResource('business-categories', Api\BusinessCategoryController::class)->only('index');
        Route::apiResource('business', Api\BusinessController::class)->only('index', 'store', 'update');
        Route::apiResource('purchase', Api\PurchaseController::class);
        Route::apiResource('sales', Api\AcnooSaleController::class);
        Route::put('sales/kot-pay/{id}', [Api\AcnooSaleController::class, 'kot_pay']);
        Route::apiResource('invoices', Api\AcnooInvoiceController::class)->only('index');
        Route::apiResource('dues', Api\AcnooDueController::class)->only('index', 'store', 'update');
        Route::apiResource('expense-categories', Api\ExpenseCategoryController::class)->except('show');
        Route::apiResource('expenses', Api\AcnooExpenseController::class)->except('show');
        Route::apiResource('income-categories', Api\AcnooIncomeCategoryController::class)->except('show');
        Route::apiResource('incomes', Api\AcnooIncomeController::class)->except('show');
        Route::apiResource('payment-types', Api\PaymentTypeController::class)->except('show');
        Route::post('payment-types/quick-view/{id}', [Api\PaymentTypeController::class, 'quick_view']);

        Route::apiResource('lang', Api\AcnooLanguageController::class)->only('index', 'store');
        Route::apiResource('profile', Api\AcnooProfileController::class)->only('index', 'store');
        Route::apiResource('plans', Api\AcnooSubscriptionsController::class)->only('index');
        Route::apiResource('subscribes', Api\AcnooSubscribesController::class)->only('index');
        Route::apiResource('currencies', Api\AcnooCurrencyController::class)->only('index', 'show');
        Route::apiResource('taxes', Api\AcnooTaxController::class)->except('show');
        Route::apiResource('transactions', Api\AcnooTransactionController::class)->only('index');
        Route::apiResource('staffs', Api\AcnooStaffController::class)->except('create', 'edit');


        Route::apiResource('ingredients', Api\AcnooIngredientController::class)->except('show', 'edit', 'create');
        Route::apiResource('modifier-groups', Api\AcnooModifierGroupController::class)->except('edit', 'create');
        Route::apiResource('modifiers', Api\AcnooModifierController::class)->except('edit', 'create');
        Route::apiResource('delivery-address', Api\AcnooDeliveryAddressController::class)->only('store', 'update', 'destroy');
        Route::apiResource('coupons', Api\AcnooCouponController::class)->except('edit', 'create', 'show');
        Route::apiResource('quotations', Api\AcnooQuotationController::class)->except('edit', 'create');
        Route::apiResource('role-permission', Api\AcnooRolePermissionController::class)->except('create', 'show', 'edit');

        // Debug route to check product visibility
        Route::get('debug/products', function () {
            $user = auth()->user();
            if (!$user) {
                return response()->json(['error' => 'Not authenticated'], 401);
            }
            
            $allProducts = \App\Models\Product::all(['id', 'productName', 'user_id', 'business_id', 'created_at']);
            $userBizProducts = \App\Models\Product::where('business_id', $user->business_id)->get(['id', 'productName', 'user_id', 'business_id', 'created_at']);
            
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

        // Debug route to check sales visibility
        Route::get('debug/sales', function () {
            $user = auth()->user();
            if (!$user) {
                return response()->json(['error' => 'Not authenticated'], 401);
            }
            
            $allSales = \App\Models\Sale::all(['id', 'invoiceNumber', 'user_id', 'business_id', 'created_at']);
            $userBizSales = \App\Models\Sale::where('business_id', $user->business_id)->get(['id', 'invoiceNumber', 'user_id', 'business_id', 'created_at']);
            
            return response()->json([
                'authenticated_user' => [
                    'id' => $user->id,
                    'name' => $user->name,
                    'business_id' => $user->business_id,
                    'role' => $user->role,
                ],
                'all_sales_count' => $allSales->count(),
                'business_sales_count' => $userBizSales->count(),
                'all_sales' => $allSales,
                'business_sales' => $userBizSales,
            ]);
        });

        // Reports
        Route::get('purchase-report', [Api\ReportsController::class, 'purchaseReport']);
        Route::get('sales-report', [Api\ReportsController::class, 'salesReport']);
        Route::get('quotation-report', [Api\ReportsController::class, 'quotationReports']);
        Route::get('due-collects-report', [Api\ReportsController::class, 'dueCollectsReport']);
        Route::get('due-reports', [Api\ReportsController::class, 'dueReports']);
        Route::get('income-report', [Api\ReportsController::class, 'incomeReport']);
        Route::get('expense-report', [Api\ReportsController::class, 'expenseReport']);
        Route::get('transaction-report', [Api\ReportsController::class, 'transactionReport']);

        Route::post('change-password', [Api\AcnooProfileController::class, 'changePassword']);

        Route::get('new-invoice', [Api\AcnooInvoiceController::class, 'newInvoice']);
        Route::get('/sign-out', [Api\Auth\AuthController::class, 'signOut']);
        Route::get('/refresh-token', [Api\Auth\AuthController::class, 'refreshToken']);

        Route::apiResource('money-in-out', Api\AcnooMoneyInOutController::class)->only('index');

        Route::apiResource('about-us', Api\AcnooAboutUsController::class)->only('index');
        Route::apiResource('privacy-policy', Api\AcnooPrivacyPolicyController::class)->only('index');
        Route::apiResource('term-condition', Api\AcnooTermConditionController::class)->only('index');

    });
});
