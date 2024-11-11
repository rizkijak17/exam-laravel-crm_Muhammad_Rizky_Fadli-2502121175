<!-- resources/views/contacts/create.blade.php -->
@extends('layouts.app')

@section('content')
<div class="container mt-5">
    <h1>Tambah Kontak Baru</h1>

    <!-- Form untuk menambah kontak -->
    <form action="{{ route('contacts.store') }}" method="POST">
        @csrf
        <div class="form-group">
            <label for="name">Nama:</label>
            <input type="text" id="name" name="name" class="form-control" required>
        </div>

        <div class="form-group">
            <label for="company">Perusahaan:</label>
            <input type="text" id="company" name="company" class="form-control">
        </div>

        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" class="form-control" required>
        </div>

        <div class="form-group">
            <label for="phone">Telepon:</label>
            <input type="text" id="phone" name="phone" class="form-control">
        </div>

        <div class="form-group">
            <label for="address">Alamat:</label>
            <textarea id="address" name="address" class="form-control"></textarea>
        </div>

        <button type="submit" class="btn btn-primary mt-3">Simpan</button>
    </form>
</div>
@endsection
