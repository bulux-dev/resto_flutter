@extends('restaurantwebaddon::layouts.blank')

@section('title')
    {{ __('Invoice') }}
@endsection

@section('main_content')
    <div class="invoice-container-sm">
        <div class="invoice-content invoice-content-size">
            <div class="invoice-logo">
                <img src="{{ asset(get_business_option('business-settings')['invoice_logo'] ?? 'assets/images/icons/logo.svg') ?? '' }}" alt="Logo">
            </div>
            <div class="mt-2">
                <h4 class="company-name"> {{ $walk_in_customer->dueCollect->business?->companyName ?? 'Restaurant App' }} </h4>
                <div class="company-info">
                    <p> {{__('Address')}} : {{ $walk_in_customer->dueCollect->business?->address ?? '' }}</p>
                    <p> {{__('Mobile')}} : {{ $walk_in_customer->dueCollect->business?->phoneNumber ?? '' }}</p>
                    <p> {{__('Email')}} : {{ get_business_option('business-settings')['email'] ?? '' }}</p>
                    @if (!empty($walk_in_customer->dueCollect->business->vat_name))
                        <p>{{ $walk_in_customer->dueCollect->business->vat_name }} : {{ $walk_in_customer->dueCollect->business->vat_no ?? '' }}</p>
                    @endif
                </div>
            </div>
            <h3 class="invoice-title my-1">
                {{__('Invoice')}}
            </h3>

            <div class="invoice-info">
                <div class="">
                    <p>{{__('Order No')}} : {{ $due_collect->invoiceNumber }} </p>
                    <p>{{__('Name')}} : {{ $due_collect->party->name ?? 'Cash' }} </p>
                    <p>{{__('Mobile')}} : {{ $due_collect->party->phone ?? '' }} </p>
                </div>
                <div class="">
                    <p class="text-end date">{{__('Date')}} : {{ formatted_date($due_collect->paymentDate) }} </p>
                    <p class="text-end time">{{__('Time')}} : {{ formatted_time($due_collect->paymentDate) }} </p>
                    <p class="text-end">{{ __('Collected By') }}: {{ $due_collect->user->role != 'staff' ? 'Admin' : $due_collect->user->name ?? '' }}</p>
                </div>
            </div>

            <table class="ph-invoice-table">
                <thead>
                    <tr>
                        <th class="text-start"> {{__('SL')}} </th>
                        <th> {{__('Total Due')}} </th>
                        <th> {{__('Pay Amount')}} </th>
                        <th class="text-end"> {{__('Due Amount')}} </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="text-start"> 1</td>
                        <td class="text-start"> {{ currency_format($due_collect->totalDue ?? 0, 'icon', 2, business_currency()) }}</td>
                        <td class="text-center"> {{ currency_format($due_collect->payDueAmount ?? 0, 'icon', 2, business_currency()) }}</td>
                        <td class="text-end">{{ currency_format($due_collect->dueAmountAfterPay ?? 0, 'icon', 2, business_currency()) }}</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div class="payment-type-container">
                                <h6 class="text-start payment-type-text"> {{__('Payment Type')}} : {{ $due_collect->payment_type->name ?? '' }} </h6>
                            </div>
                        </td>
                        <td colspan="3">
                            <div class="calculate-amount">
                                <div class="d-flex justify-content-between">
                                    <p>{{__('Payable')}} :</p>
                                    <p>{{ currency_format($due_collect->totalDue ?? 0, 'icon', 2, business_currency()) }}</p>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <p>{{__('Received')}} :</p>
                                    <p>{{ currency_format($due_collect->payDueAmount ?? 0, 'icon', 2, business_currency()) }}</p>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <p>{{__('Due')}} :</p>
                                    <p>{{ currency_format($due_collect->dueAmountAfterPay ?? 0, 'icon', 2, business_currency()) }}</p>
                                </div>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>

            <div class="invoice-footer-sm mt-3">
                <h5>{{ get_business_option('business-settings')['gratitude_message'] ?? '' }}</h5>
                @if (!empty(get_business_option('business-settings')['note']))
                    <p class="text-center note-pera"> {{ get_business_option('business-settings')['note_label'] ?? '' }}  : {{ get_business_option('business-settings')['note'] ?? '' }}</p>
                @endif
                <div class="scanner-2">
                    <img src="{{ asset('uploads/qr-codes/qrcode.svg') }}" alt="scanner">
                </div>
                <h6>{{ get_option('general')['admin_footer_text'] ?? '' }} <a href="{{ get_option('general')['admin_footer_link'] ?? '#' }}" target="_blank">{{ get_option('general')['admin_footer_link_text'] ?? '' }}</h6>
            </div>
        </div>
    </div>
@endsection

@push('js')
    <script src="{{ asset('assets/js/custom/onloadPrint.js') }}"></script>
@endpush
