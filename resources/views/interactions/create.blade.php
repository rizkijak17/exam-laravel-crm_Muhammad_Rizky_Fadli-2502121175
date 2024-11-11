<!-- resources/views/interactions/create.blade.php -->
<h1>Tambah Interaksi Baru</h1>

<form action="{{ route('interactions.store') }}" method="POST">
    @csrf
    <label>Kontak:</label>
    <select name="contact_id" required>
        @foreach($contacts as $contact)
            <option value="{{ $contact->id }}">{{ $contact->name }}</option>
        @endforeach
    </select><br>

    <label>Jenis Interaksi:</label>
    <input type="text" name="type" required><br>

    <label>Catatan:</label>
    <textarea name="notes"></textarea><br>

    <label>Tanggal Interaksi:</label>
    <input type="datetime-local" name="interaction_date" required><br>

    <button type="submit">Simpan</button>
</form>
