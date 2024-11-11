<!-- resources/views/interactions/edit.blade.php -->
<h1>Edit Interaksi</h1>

<form action="{{ route('interactions.update', $interaction->id) }}" method="POST">
    @csrf
    @method('PUT')
    <label>Kontak:</label>
    <select name="contact_id" required>
        @foreach($contacts as $contact)
            <option value="{{ $contact->id }}" {{ $interaction->contact_id == $contact->id ? 'selected' : '' }}>
                {{ $contact->name }}
            </option>
        @endforeach
    </select><br>

    <label>Jenis Interaksi:</label>
    <input type="text" name="type" value="{{ $interaction->type }}" required><br>

    <label>Catatan:</label>
    <textarea name="notes">{{ $interaction->notes }}</textarea><br>

	<label>Tanggal Interaksi:</label>
	<input type="datetime-local" name="interaction_date" value="{{ $interaction->interaction_date ? $interaction->interaction_date->format('Y-m-d\TH:i') : '' }}" required><br>

    <button type="submit">Update</button>
</form>
