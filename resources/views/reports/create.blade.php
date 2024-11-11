<!-- resources/views/reports/create.blade.php -->
<h1>Tambah Laporan Baru</h1>

<form action="{{ route('reports.store') }}" method="POST">
    @csrf
    <label>Jenis Laporan:</label>
    <input type="text" name="type" required><br>

    <label>Deskripsi:</label>
    <textarea name="description"></textarea><br>

    <!-- Formatkan datetime-local sesuai dengan kebutuhan -->
    <label>Tanggal Dibuat:</label>
    <input type="datetime-local" name="generated_at" value="{{ old('generated_at', \Carbon\Carbon::now()->format('Y-m-d\TH:i')) }}" required><br>

    <button type="submit">Simpan</button>
</form>
