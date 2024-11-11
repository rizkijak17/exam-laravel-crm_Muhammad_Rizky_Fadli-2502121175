<?php

// CLVController.php
namespace App\Http\Controllers;

use App\Models\Sale;
use App\Models\Customer;
use Illuminate\Http\Request;

class CLVController extends Controller
{
    public function calculateCLV($customerId)
    {
        $customer = Customer::find($customerId);
        $averagePurchase = Sale::where('customer_id', $customerId)->avg('amount');
        $purchaseFrequency = Sale::where('customer_id', $customerId)->count();
        $customerLifetime = $customer->created_at->diffInYears(now());

        $clv = $averagePurchase * $purchaseFrequency * $customerLifetime;

        return response()->json(['clv' => $clv]);
    }
}

