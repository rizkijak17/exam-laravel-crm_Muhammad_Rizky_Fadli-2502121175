<?php

namespace App\Http\Controllers;

use App\Models\Sale;
use App\Models\CustomerSegment;
use Illuminate\Http\Request;

class ReportController extends Controller
{
    public function index()
    {
        // Get data sales dan customer segment
        $sales = Sale::with('contact')->get();
        $customer_segments = CustomerSegment::all();

        // Logika untuk menghitung Customer Lifetime Value (CLV) dan funnel sales
        $clv = $this->calculateCLV($sales);
        $sales_funnel = $this->calculateSalesFunnel($sales);

        return view('reports.index', compact('sales', 'customer_segments', 'clv', 'sales_funnel'));
    }

    private function calculateCLV($sales)
    {
        // Algoritma untuk menghitung CLV
        return $sales->sum('amount');
    }

    private function calculateSalesFunnel($sales)
    {
        // Algoritma untuk menghitung funnel sales (Lead Generation, Qualification, Conversion, Retention)
        return [
            'lead_generation' => 25,
            'lead_qualification' => 18,
            'conversion' => 12,
            'retention' => 8,
        ];
    }
}
