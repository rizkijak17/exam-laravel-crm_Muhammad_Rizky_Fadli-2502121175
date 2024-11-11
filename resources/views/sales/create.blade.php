<!-- resources/views/sales/create.blade.php -->
@extends('layouts.app')

@section('content')
    <div class="container mt-5">
        <h1>Tambah Penjualan Baru</h1>

        <form action="{{ route('sales.store') }}" method="POST">
            @csrf

            <div class="mb-3">
                <label for="contact_id" class="form-label">Kontak:</label>
                <select name="contact_id" id="contact_id" class="form-control" required>
                    @foreach($contacts as $contact)
                        <option value="{{ $contact->id }}">{{ $contact->name }}</option>
                    @endforeach
                </select>
            </div>

            <div class="mb-3">
                <label for="amount" class="form-label">Jumlah:</label>
                <input type="number" name="amount" id="amount" class="form-control" step="1" required>
            </div>

            <div class="mb-3">
                <label for="status" class="form-label">Status:</label>
                <input type="text" name="status" id="status" class="form-control" required>
            </div>

            <div class="mb-3">
                <label for="sale_date" class="form-label">Tanggal Penjualan:</label>
                <input type="datetime-local" name="sale_date" id="sale_date" class="form-control" value="{{ old('sale_date', \Carbon\Carbon::now()->format('Y-m-d\TH:i')) }}" required>
            </div>

            <button type="submit" class="btn btn-primary">Simpan</button>
        </form>
    </div>
@endsection
