<!-- resources/views/sales/invoice.blade.php -->
@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">Faktur Penjualan</div>

                <div class="card-body">
                    <h5>Faktur untuk {{ $invoiceData['contact']->name }}</h5>
                    <p><strong>Tanggal Penjualan:</strong> {{ \Carbon\Carbon::parse($invoiceData['sale_date'])->format('Y-m-d H:i') }}</p>
                    <p><strong>Jumlah Penjualan:</strong> ${{ $invoiceData['amount'] }}</p>

                    <p><strong>Deskripsi:</strong> Penjualan kepada {{ $invoiceData['contact']->name }}</p>

                    <hr>
                    <p><strong>Total: ${{ $invoiceData['amount'] }}</strong></p>

                    <!-- Bisa ditambahkan opsi untuk mengunduh atau mencetak faktur -->
                    <button class="btn btn-primary">Unduh Faktur</button>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
