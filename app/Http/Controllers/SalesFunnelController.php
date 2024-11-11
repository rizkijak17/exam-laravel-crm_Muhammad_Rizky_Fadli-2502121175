<?php

// SalesFunnelController.php
namespace App\Http\Controllers;

use App\Models\Sale;
use Illuminate\Http\Request;

class SalesFunnelController extends Controller
{
    public function getSalesFunnelData()
    {
        $funnelData = [
            'leadGeneration' => Sale::where('status', 'prospect')->count(),
            'leadQualification' => Sale::where('status', 'qualified')->count(),
            'conversion' => Sale::where('status', 'converted')->count(),
            'retention' => Sale::where('status', 'retained')->count(),
        ];

        return response()->json($funnelData);
    }
}
