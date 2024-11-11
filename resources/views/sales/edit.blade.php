<!-- resources/views/sales/edit.blade.php -->
@extends('layouts.app')

@section('content')
    <div class="container mt-5">
        <h1>Edit Penjualan</h1>

        <form action="{{ route('sales.update', $sale->id) }}" method="POST">
            @csrf
            @method('PUT')

            <div class="mb-3">
                <label for="contact_id" class="form-label">Kontak:</label>
                <select name="contact_id" id="contact_id" class="form-control" required>
                    @foreach($contacts as $contact)
                        <option value="{{ $contact->id }}" {{ $contact->id == $sale->contact_id ? 'selected' : '' }}>
                            {{ $contact->name }}
                        </option>
                    @endforeach
                </select>
            </div>

            <div class="mb-3">
                <label for="amount" class="form-label">Jumlah:</label>
                <input type="number" name="amount" id="amount" value="{{ $sale->amount }}" class="form-control" required>
            </div>

            <div class="mb-3">
                <label for="status" class="form-label">Status:</label>
                <input type="text" name="status" id="status" value="{{ $sale->status }}" class="form-control" required>
            </div>

            <div class="mb-3">
                <label for="sale_date" class="form-label">Tanggal Penjualan:</label>
                <input type="datetime-local" name="sale_date" id="sale_date" value="{{ old('sale_date', \Carbon\Carbon::parse($sale->sale_date)->format('Y-m-d\TH:i')) }}" class="form-control" required>
            </div>

            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>
@endsection
