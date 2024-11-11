<!-- resources/views/reports/edit.blade.php -->
<h1>Edit Laporan</h1>

<form action="{{ route('reports.update', $report->id) }}" method="POST">
    @csrf
    @method('PUT')
    
    <label>Jenis Laporan:</label>
    <input type="text" name="type" value="{{ $report->type }}" required><br>

    <label>Deskripsi:</label>
    <textarea name="description">{{ $report->description }}</textarea><br>

    <label>Tanggal Dibuat:</label>
    <!-- Perbaiki format datetime-local di sini -->
    <input type="datetime-local" name="generated_at" value="{{ old('generated_at', \Carbon\Carbon::parse($report->generated_at)->format('Y-m-d\TH:i')) }}" required><br>

    <button type="submit">Update</button>
</form>
