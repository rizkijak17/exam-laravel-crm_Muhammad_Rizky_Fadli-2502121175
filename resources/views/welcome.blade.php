@extends('layouts.app')

@section('content')
    <!-- Pop-up Modal -->
    <div id="welcomeModal" class="modal" style="display: block; position: fixed; top: 0; left: 0; right: 0; bottom: 0;
        display: flex; justify-content: center; align-items: center; background: rgba(0,0,0,0.6); z-index: 9999;">
        <div class="modal-content" style="background-image: url('{{ asset('bg.png') }}'); background-size: cover; background-position: center; width: 100%; height: 100%; padding: 20px; border-radius: 0; display: flex; justify-content: center; align-items: center; flex-direction: column;">
            <!-- Teks dengan efek stroke lebih tebal menggunakan text-shadow -->
            <h2 class="text-white" style="font-size: 3rem; 
                text-shadow: 0 0 4px rgba(0,0,0,1), 0 0 8px rgba(0,0,0,1), 0 0 16px rgba(0,0,0,1); text-align: center; margin-bottom: 10px;">
                Selamat datang di Aplikasi CRM!
            </h2>
            <p class="text-white mb-4" style="font-size: 1.5rem; 
                text-shadow: 0 0 4px rgba(0,0,0,1), 0 0 8px rgba(0,0,0,1), 0 0 16px rgba(0,0,0,1); text-align: center; margin-bottom: 20px;">
                Kelola kontak, penjualan, dan interaksi dengan pelanggan dengan mudah!
            </p>
            <div class="text-center">
                <button id="getStartedBtn" class="btn btn-primary" style="font-size: 1.1rem; padding: 15px 30px; width: auto;">Get Started</button>
            </div>
        </div>
    </div>

    <!-- Main Content (Hidden initially) -->
    <div class="container text-center" style="display: none;" id="mainContent">
        <h1>Selamat datang di CRM Login</h1>
        <p>Kelola kontak, penjualan, dan interaksi dengan pelanggan dengan mudah!</p>

        <div>
            <a href="{{ route('login') }}" class="btn btn-primary m-2">Login</a>
            <a href="{{ route('register') }}" class="btn btn-secondary m-2">Register</a>
        </div>
    </div>

    <script>
        // JavaScript untuk menangani tampilan modal dan konten utama
        document.getElementById('getStartedBtn').addEventListener('click', function() {
            // Sembunyikan pop-up dan tampilkan konten utama
            document.getElementById('welcomeModal').style.display = 'none';
            document.getElementById('mainContent').style.display = 'block';
        });
    </script>
@endsection
