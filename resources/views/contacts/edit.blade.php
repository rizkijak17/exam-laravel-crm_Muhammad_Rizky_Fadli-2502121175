<!-- resources/views/contacts/edit.blade.php -->
@extends('layouts.app')

@section('content')
    <div class="container mt-5">
        <h1>Edit Kontak</h1>

        <form action="{{ route('contacts.update', $contact->id) }}" method="POST">
            @csrf
            @method('PUT')
            
            <div class="mb-3">
                <label for="name" class="form-label">Nama:</label>
                <input type="text" name="name" id="name" value="{{ $contact->name }}" class="form-control" required>
            </div>

            <div class="mb-3">
                <label for="company" class="form-label">Perusahaan:</label>
                <input type="text" name="company" id="company" value="{{ $contact->company }}" class="form-control">
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email:</label>
                <input type="email" name="email" id="email" value="{{ $contact->email }}" class="form-control" required>
            </div>

            <div class="mb-3">
                <label for="phone" class="form-label">Telepon:</label>
                <input type="text" name="phone" id="phone" value="{{ $contact->phone }}" class="form-control">
            </div>

            <div class="mb-3">
                <label for="address" class="form-label">Alamat:</label>
                <textarea name="address" id="address" class="form-control">{{ $contact->address }}</textarea>
            </div>

            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>
@endsection
