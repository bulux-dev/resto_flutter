@extends('restaurantwebaddon::layouts.blank')

@section('title')
    {{ __('Invoice') }}
@endsection

@section('main_content')
<div class="invoice-container-sm">
    <div class="invoice-content invoice-content-size">
        <div class="invoice-logo">
            <img src="{{ asset(get_business_option('business-settings')['invoice_logo'] ?? 'assets/images/icons/logo.svg') }}" alt="Logo">
        </div>
        <div class="mt-2">
            <h4 class="company-name">{{ $sale->business->companyName ?? '' }}</h4>
            <div class="company-info">
                <p>{{__('Address')}} : {{ $sale->business->address ?? '' }}</p>
                <p>{{__('Mobile')}} : {{ $sale->business->phoneNumber ?? '' }}</p>
                <p>{{__('Email')}} : {{ get_business_option('business-settings')['email'] ?? '' }}</p>
                @if (!empty($sale->business->vat_name))
                <p>{{ $sale->business->vat_name }} : {{ $sale->business->vat_no ?? '' }}</p>
                @endif
            </div>
        </div>
        <h3 class="invoice-title my-1">
            {{__('Invoice')}}
        </h3>

        <div class="invoice-info">
            <div class="">
                <p>{{__('Order No')}} : {{ $sale->invoiceNumber ?? '' }}</p>
                <p>{{__('Name')}} : {{ $sale->party->name ?? 'Cash' }}</p>
                <p>{{__('Order Type')}} : {{ ucwords(str_replace('_', ' ', $sale->sales_type)) }} </p>
                @if (!empty($sale->kot_id))
                <p>{{__('Table')}} : {{ $sale->kot_ticket->table->name ?? '' }}</p>
                @endif
            </div>
            <div class="">
                <p class="text-end date">{{__('Date')}} : {{ formatted_date($sale->saleDate ?? '') }}</p>
                <p class="text-end time">{{__('Time')}} : {{ formatted_time($sale->saleDate ?? '') }}</p>
               <p class="text-end">{{ __('Sales By') }} : {{ $sale->user->role != 'staff' ? 'Admin' : $sale->user->name ?? '' }}</p>
            </div>
        </div>

        <table class="ph-invoice-table">
            <thead>
                <tr>
                    <th class="text-start"> {{__('SL')}} </th>
                    <th> {{__('Items')}} </th>
                    <th> {{__('QTY')}} </th>
                    <th> {{__('U.Price')}} </th>
                    <th class="text-end"> {{__('Amount')}} </th>
                </tr>
            </thead>

            @php $subTotal = 0; @endphp
            <tbody>
                @foreach ($sale->details ?? [] as $detail)
                @php
                    $productTotal = ($detail->price ?? 0) * ($detail->quantities ?? 0);
                    $subTotal += $productTotal;
                @endphp
                <tr>
                    <td class="text-start">
                        {{ $loop->iteration }}</td>
                    <td>
                        {{ $detail->product->productName ?? '' }}
                        @foreach ($detail->detail_options ?? [] as $modifier)
                        <ul class="modifier-ul">
                            <li>{{ $modifier->modifier_group_option->name ?? '' }} (<span>{{  currency_format($modifier->modifier_group_option->price ?? 0, currency: business_currency() )}}</span>)</li>
                        </ul>
                        @endforeach

                    </td>
                    <td class="text-center">{{ $detail->quantities }}</td>
                    <td class="text-center">{{  currency_format($detail->price ?? 0, currency: business_currency()) }}</td>
                    <td class="text-end">{{ currency_format($productTotal, currency: business_currency()) }}</td>
                </tr>
                @endforeach
                <tr>
                    <td colspan="2">
                        <div class="">
                            <h6  class="text-start payment-type-text"> {{__('Payment Type')}} : {{ $sale->payment_type->name ?? '' }} </h6>
                        </div>
                    </td>
                    <td colspan="3">
                        <div class="calculate-amount">
                            <div class="d-flex justify-content-between">
                                <p> {{__('Sub-Total')}} :</p>
                                <p>{{ currency_format($subTotal, currency: business_currency()) }}</p>
                            </div>
                            <div class="d-flex justify-content-between">
                                <p> {{__('Vat')}} :</p>
                                <p>{{ currency_format($sale->tax_amount, currency: business_currency()) }}</p>
                            </div>
                            @if (!empty($sale->discountAmount))
                            <div class="d-flex justify-content-between">
                                <p> {{__('Discount')}} :</p>
                                <p>{{ currency_format($sale->discountAmount, currency: business_currency()) }}</p>
                            </div>
                            @endif
                            @if (!empty($sale->coupon_amount))
                            <div class="d-flex justify-content-between">
                                <p> {{__('Coupon')}} :</p>
                                <p>{{ currency_format($sale->coupon_amount, currency: business_currency()) }}</p>
                            </div>
                            @endif
                            @if (!empty($sale->meta['tip']))
                            <div class="d-flex justify-content-between">
                                <p> {{__('Tips')}} :</p>
                                <p>{{ currency_format($sale->meta['tip'] ?? 0, currency: business_currency()) }}</p>
                            </div>
                            @endif
                            @if (!empty($sale->meta['delivery_charge']))
                            <div class="d-flex justify-content-between">
                                <p> {{__('Shipping Charge')}} :</p>
                                <p>{{ currency_format($sale->meta['delivery_charge'] ?? 0, currency: business_currency()) }}</p>
                            </div>
                            @endif
                            <div class="d-flex justify-content-between total-amount">
                                <p class="net-payable"> {{__('Net Payable')}} :</p>
                                <p class="net-payable">{{ currency_format($sale->totalAmount ?? 0, currency: business_currency()) }}</p>
                            </div>
                            <div class="d-flex justify-content-between paid">
                                <p> {{__('Paid')}} :</p>
                                <p>{{ currency_format($sale->paidAmount ?? 0, currency: business_currency()) }}</p>
                            </div>
                            <div class="d-flex justify-content-between">
                                <p> {{__('Due')}} :</p>
                                <p>{{ currency_format($sale->dueAmount ?? 0, currency: business_currency()) }}</p>
                            </div>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>

        <div class="invoice-footer-sm mt-3">
            <h5>{{ get_business_option('business-settings')['gratitude_message'] ?? '' }}</h5>
            @if (!empty(get_business_option('business-settings')['note']))
                <p class="text-center note-pera"> {{ get_business_option('business-settings')['note_label'] ?? '' }} : {{ get_business_option('business-settings')['note'] ?? '' }}</p>
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
