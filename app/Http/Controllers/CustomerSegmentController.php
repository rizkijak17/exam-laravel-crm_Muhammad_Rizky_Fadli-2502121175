<?php

// CustomerSegmentController.php
namespace App\Http\Controllers;

use App\Models\Customer;
use Illuminate\Http\Request;

class CustomerSegmentController extends Controller
{
    public function segmentByAge()
    {
        $segments = Customer::selectRaw('CASE
                        WHEN age < 20 THEN "Young"
                        WHEN age BETWEEN 20 AND 40 THEN "Adult"
                        ELSE "Senior"
                    END as age_segment, count(*) as count')
                    ->groupBy('age_segment')
                    ->get();

        return response()->json($segments);
    }
}
