<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use App\Models\Interaction; // Model untuk mencatat interaksi
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function index()
    {
        $contacts = Contact::paginate(10);
        return view('contacts.index', compact('contacts'));
    }

    public function create()
    {
        return view('contacts.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:contacts',
        ]);
        
        // Membuat kontak baru
        $contact = Contact::create($request->all());

        // Mencatat interaksi (tambah kontak)
        Interaction::create([
            'contact_id' => $contact->id,
            'type' => 'Penambahan Kontak',
            'notes' => 'Kontak dengan nama ' . $contact->name . ' ditambahkan',
            'interaction_date' => now(), // Menyimpan waktu saat ini untuk interaksi
        ]);

        return redirect()->route('contacts.index')->with('success', 'Kontak berhasil ditambahkan');
    }

    public function edit(Contact $contact)
    {
        return view('contacts.edit', compact('contact'));
    }

    public function update(Request $request, Contact $contact)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:contacts,email,' . $contact->id,
        ]);

        // Menyimpan perubahan kontak
        $contact->update($request->all());

        // Mencatat interaksi (ubah kontak)
        Interaction::create([
            'contact_id' => $contact->id,
            'type' => 'Perubahan Kontak',
            'notes' => 'Kontak dengan nama ' . $contact->name . ' diubah',
            'interaction_date' => now(), // Menyimpan waktu saat ini untuk interaksi
        ]);

        return redirect()->route('contacts.index')->with('success', 'Kontak berhasil diperbarui');
    }

    public function destroy(Contact $contact)
    {
        // Mencatat interaksi (hapus kontak)
        Interaction::create([
            'contact_id' => $contact->id,
            'type' => 'Penghapusan Kontak',
            'notes' => 'Kontak dengan nama ' . $contact->name . ' dihapus',
            'interaction_date' => now(), // Menyimpan waktu saat ini untuk interaksi
        ]);

        // Menghapus kontak
        $contact->delete();

        return redirect()->route('contacts.index')->with('success', 'Kontak berhasil dihapus');
    }
}
