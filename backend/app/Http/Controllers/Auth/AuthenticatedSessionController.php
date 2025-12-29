<?php

namespace App\Http\Controllers\Auth;

use Illuminate\View\View;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Nwidart\Modules\Facades\Module;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\RedirectResponse;
use App\Http\Requests\Auth\LoginRequest;
use App\Models\BusinessCategory;

class AuthenticatedSessionController extends Controller
{
    public function create(): View
    {
        $business_categories = BusinessCategory::whereStatus(1)->latest()->get();
        return view('auth.login', compact('business_categories'));
    }

    public function store(LoginRequest $request)
    {
        $request->authenticate();

        $request->session()->regenerate();

        $remember = $request->filled('remember') ? 1 : 0;
        $user = auth()->user();
        $redirect_url = url('/');

        if ($user->role == 'shop-owner' || $user->role == 'staff') {

            $module = Module::find('RestaurantWebAddon');

            if ($module) {
                if ($module->isEnabled()) {

                    $business = $user->business;
                    if ($business && !$business->status) {
                        Auth::logout();
                        return response()->json([
                            'message' => 'Your business is inactive. Please contact your administrator.',
                            'redirect' => route('login')
                        ], 406);
                    }

                    $redirect_url = route('business.dashboard.index');

                } else {
                    Auth::logout();
                    return response()->json([
                        'message' => 'Web addon is not active.',
                        'redirect' => route('login'),
                    ], 406);
                }
            } else {
                Auth::logout();
                return response()->json([
                    'message' => 'Web addon is not installed.',
                    'redirect' => route('login'),
                ], 406);
            }

        } else {

            $role = Role::where('name', $user->role)->first();
            $first_role = $role->permissions->pluck('name')->all()[0];
            $page = explode('-', $first_role);
            $redirect_url = route('admin.' . $page[0] . '.index');

        }
        return response()->json([
            'message' => __('Logged In Successfully'),
            'remember' => $remember,
            'redirect' => $redirect_url,
        ]);

    }

    public function destroy(Request $request): RedirectResponse
    {
        Auth::guard('web')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/login');
    }
}
