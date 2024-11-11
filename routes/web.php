<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\InteractionController;
use App\Http\Controllers\SaleController;
use App\Http\Controllers\ReportController;
use App\Http\Controllers\DashboardController;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\HomeController;

// Route untuk halaman utama (Welcome Page)
Route::get('/', function () {
    // Jika sudah login, redirect ke halaman home
    if (Auth::check()) {
        return redirect('/home');
    }
    return view('welcome');
});

// Routes untuk Login dan Register (otomatis disediakan oleh Auth)
Auth::routes();

// Routes resource untuk setiap fitur CRM, hanya dapat diakses jika sudah login
Route::middleware(['auth'])->group(function () {
    // Routes untuk mengelola Contacts, Interactions, Sales, dan Reports
    Route::resource('contacts', ContactController::class);
    Route::resource('interactions', InteractionController::class);
    Route::resource('sales', SaleController::class);
    Route::resource('reports', ReportController::class);

    // Route untuk halaman faktur
    Route::get('sales/{sale}/invoice', [SaleController::class, 'createInvoice'])->name('sales.invoice');
    Route::get('sales/{sale}/downloadInvoice', [SaleController::class, 'downloadInvoice'])->name('sales.downloadInvoice');


    // Dashboard hanya dapat diakses jika sudah login
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

    // Untuk role berdasarkan peran pengguna
    Route::middleware(['role:admin'])->group(function () {
        // Routes yang hanya bisa diakses oleh Admin
        // Anda bisa menambahkan route yang ingin dibatasi aksesnya hanya untuk admin
    });

    Route::middleware(['role:sales'])->group(function () {
        // Routes yang hanya bisa diakses oleh Sales
        // Anda bisa menambahkan route yang ingin dibatasi aksesnya hanya untuk sales
    });

    Route::middleware(['role:manager'])->group(function () {
        // Routes yang hanya bisa diakses oleh Manager
        // Anda bisa menambahkan route yang ingin dibatasi aksesnya hanya untuk manager
    });
});

// Halaman Home setelah login
Route::get('/home', [HomeController::class, 'index'])->name('home');

// Rute logout
Route::post('logout', [App\Http\Controllers\Auth\LoginController::class, 'logout'])->name('logout');

// Route untuk halaman utama, redirect ke home jika sudah login
Route::get('/', function () {
    // Redirect ke home jika sudah login
    if (Auth::check()) {
        return redirect('/home');
    }
    return view('welcome');
});
