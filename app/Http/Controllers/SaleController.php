<?php

namespace App\Http\Controllers;

use App\Models\Sale;
use App\Models\Contact;
use App\Models\Interaction; // Model untuk mencatat interaksi
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade as PDF;

class SaleController extends Controller
{
    public function index()
    {
        $sales = Sale::with('contact')->get();
        return view('sales.index', compact('sales'));
    }

    public function create()
    {
        $contacts = Contact::all();
        return view('sales.create', compact('contacts'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'contact_id' => 'required|exists:contacts,id',
            'amount' => 'required|numeric',
            'status' => 'required|string',
            'sale_date' => 'required|date',
        ]);

        // Konversi amount menjadi desimal dengan dua angka di belakang koma
        $sale = new Sale();
        $sale->amount = number_format($request->amount, 2, '.', ''); // Mengubah ke format desimal
        $sale->status = $request->status;
        $sale->sale_date = $request->sale_date;
        $sale->contact_id = $request->contact_id;
        $sale->save();

        // Mencatat interaksi (tambah penjualan)
        Interaction::create([
            'contact_id' => $sale->contact_id,
            'type' => 'Penambahan Penjualan',
            'notes' => 'Penjualan sebesar ' . $sale->amount . ' ditambahkan',
            'interaction_date' => now(), // Waktu saat ini
        ]);

        return redirect()->route('sales.index')->with('success', 'Penjualan berhasil ditambahkan');
    }

    public function edit(Sale $sale)
    {
        $contacts = Contact::all();
        return view('sales.edit', compact('sale', 'contacts'));
    }

    public function update(Request $request, Sale $sale)
    {
        $request->validate([
            'contact_id' => 'required|exists:contacts,id',
            'amount' => 'required|numeric',
            'status' => 'required|string',
            'sale_date' => 'required|date',
        ]);

        // Update amount dengan format desimal
        $sale->amount = number_format($request->amount, 2, '.', ''); // Mengubah ke format desimal
        $sale->status = $request->status;
        $sale->sale_date = $request->sale_date;
        $sale->contact_id = $request->contact_id;
        $sale->save();

        // Mencatat interaksi (perubahan penjualan)
        Interaction::create([
            'contact_id' => $sale->contact_id,
            'type' => 'Perubahan Penjualan',
            'notes' => 'Penjualan sebesar ' . $sale->amount . ' diubah',
            'interaction_date' => now(), // Waktu saat ini
        ]);

        return redirect()->route('sales.index')->with('success', 'Penjualan berhasil diperbarui');
    }

    public function destroy(Sale $sale)
    {
        // Mencatat interaksi (penghapusan penjualan)
        Interaction::create([
            'contact_id' => $sale->contact_id,
            'type' => 'Penghapusan Penjualan',
            'notes' => 'Penjualan sebesar ' . $sale->amount . ' dihapus',
            'interaction_date' => now(),  // Menggunakan waktu saat ini untuk penghapusan
        ]);

        $sale->delete();
        return redirect()->route('sales.index')->with('success', 'Penjualan berhasil dihapus');
    }

    // Fungsi untuk membuat Faktur (Invoice)
    public function createInvoice($saleId)
    {
        // Mendapatkan data penjualan berdasarkan ID
        $sale = Sale::with('contact')->findOrFail($saleId);

        // Mempersiapkan data faktur (bisa menggunakan template)
        $invoiceData = [
            'sale' => $sale,
            'contact' => $sale->contact,
            'amount' => $sale->amount,
            'sale_date' => $sale->sale_date,
        ];

        // Menampilkan halaman untuk membuat faktur
        return view('sales.invoice', compact('invoiceData'));
    }

    // Fungsi untuk membuat faktur dan mengunduhnya dalam format PDF
    public function downloadInvoice($saleId)
    {
        // Mendapatkan data penjualan berdasarkan ID
        $sale = Sale::with('contact')->findOrFail($saleId);

        // Data faktur yang akan dimasukkan ke dalam PDF
        $invoiceData = [
            'sale' => $sale,
            'contact' => $sale->contact,
            'amount' => $sale->amount,
            'sale_date' => $sale->sale_date,
            'description' => 'Penjualan kepada ' . $sale->contact->name,
        ];

        // Membuat view untuk PDF
        $pdf = PDF::loadView('sales.invoice_pdf', $invoiceData);

        // Mengunduh PDF dengan nama faktur
        return $pdf->download('faktur_penjualan_' . $sale->id . '.pdf');
    }
}

