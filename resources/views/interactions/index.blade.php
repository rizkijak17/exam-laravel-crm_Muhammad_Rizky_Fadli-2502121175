@extends('layouts.app')

@section('content')
    <div class="container mt-5">
        <div class="row mb-4">
            <div class="col-md-6">
                <form method="GET" action="{{ route('interactions.index') }}">
                    <div class="input-group">
                        <input type="date" name="date" class="form-control" value="{{ request('date') }}">
                        <button type="submit" class="btn btn-primary">Filter</button>
                        <a href="{{ route('interactions.index') }}" class="btn btn-secondary ml-2">Clear</a>
                    </div>
                </form>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Kontak</th>
                            <th>Jenis Interaksi</th>
                            <th>Catatan</th>
                            <th>Tanggal Interaksi</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($interactions as $interaction)
                            <tr>
                                <td>{{ $interaction->contact->name }}</td>
                                <td>{{ $interaction->type }}</td>
                                <td>{{ $interaction->notes }}</td>
                                <td>{{ $interaction->interaction_date->format('Y-m-d H:i') }}</td>
                                <td>
                                    <a href="{{ route('interactions.edit', $interaction->id) }}">Edit</a> |
                                    <form action="{{ route('interactions.destroy', $interaction->id) }}" method="POST" style="display:inline;">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-sm btn-danger">Hapus</button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>

            </div>
        </div>
    </div>
@endsection
