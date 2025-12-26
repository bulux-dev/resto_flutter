<!DOCTYPE html>
@if (app()->getLocale() == 'ar')
<html lang="ar" dir="rtl">
@else
<html lang="en" dir="auto">
@endif
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="{{__('IE=edge')}}">
    <meta name="viewport" content="{{__('width=device-width, initial-scale=1.0')}}">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>@hasSection('title') @yield('title') | @endif {{ get_option('general')['title'] ?? config('app.name') }}</title>
    @include('layouts.partials.css')
</head>
<body>

<!-- Side Bar Start -->
@include('restaurantwebaddon::layouts.partials.side-bar')
<!-- Side Bar End -->
<div class="section-container">
    <!-- header start -->
    @include('restaurantwebaddon::layouts.partials.header')
    <!-- header end -->
    <!-- erp-state-overview-section start -->

    @yield('main_content')
    @if (!request()->routeIs('business.sales.create', 'business.sales.edit', 'business.quotations.edit', 'business.quotations.convert-sale'))
    @include('restaurantwebaddon::layouts.partials.footer')
    @endif
    <!-- erp-state-overview-section end -->
    @stack('modal')
</div>

@include('restaurantwebaddon::layouts.partials.script')
</body>
</html>
