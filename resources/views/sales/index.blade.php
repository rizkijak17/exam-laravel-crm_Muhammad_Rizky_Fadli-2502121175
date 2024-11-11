<!-- resources/views/sales/index.blade.php -->
@extends('layouts.app')

@section('content')
    <h1>Daftar Penjualan</h1>
    <a href="{{ route('sales.create') }}" class="btn btn-primary">Tambah Penjualan Baru</a>

    <table class="table table-bordered mt-4">
        <thead>
            <tr>
                <th>Kontak</th>
                <th>Jumlah</th>
                <th>Status</th>
                <th>Tanggal Penjualan</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            @foreach($sales as $sale)
                <tr>
                    <td>{{ $sale->contact->name }}</td>
                    <td>{{ number_format($sale->amount, 0) }}</td>
                    <td>{{ $sale->status }}</td>
                    <!-- Menampilkan tanggal dengan format YYYY-MM-DD HH:MM -->
                    <td>{{ $sale->sale_date ? \Carbon\Carbon::parse($sale->sale_date)->format('Y-m-d H:i') : '' }}</td>
                    <td>
                        <a href="{{ route('sales.edit', $sale->id) }}" class="btn btn-sm btn-warning">Edit</a> |
                        <form action="{{ route('sales.destroy', $sale->id) }}" method="POST" style="display:inline;">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-sm btn-danger">Hapus</button>
                        </form> |
                        <!-- Tombol buat faktur -->
                        <a href="{{ route('sales.invoice', $sale->id) }}" class="btn btn-sm btn-info">Buat Faktur</a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
@endsection
