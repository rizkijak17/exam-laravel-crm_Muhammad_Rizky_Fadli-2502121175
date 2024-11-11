// routes/api.php
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SalesFunnelController;
use App\Http\Controllers\CLVController;
use App\Http\Controllers\CustomerSegmentController;

// Sales Funnel route
Route::get('/sales-funnel', [SalesFunnelController::class, 'index']);

// Customer Lifetime Value (CLV) route
Route::get('/clv', [CLVController::class, 'index']);

// Customer Segmentation route
Route::get('/customer-segmentation', [CustomerSegmentController::class, 'index']);
