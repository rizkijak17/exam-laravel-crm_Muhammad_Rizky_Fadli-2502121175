@extends('layouts.app')

@section('content')
<!-- Dashboard Header -->
<div class="container mt-5">
    <div class="row">
        <!-- Salutation -->
        <div class="col-12">
            <div class="alert alert-primary" role="alert">
                <h3>Selamat datang di Halaman Awal CRM, {{ Auth::user()->name }}!</h3>
                <p>Di sini Anda dapat mengelola berbagai fitur CRM seperti Contacts, Sales, Reports, dan Interactions.</p>
            </div>
        </div>

        <!-- Get Started Button Section -->
        <div class="col-12 text-center mt-5">
            <a href="{{ route('reports.index') }}" class="btn btn-primary btn-lg">Get Started</a>
        </div>
    </div>
</div>
@endsection
