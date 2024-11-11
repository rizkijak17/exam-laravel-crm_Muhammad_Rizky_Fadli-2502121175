<?php

namespace App\Http\Controllers;

use App\Models\Interaction;
use Illuminate\Http\Request;

class InteractionController extends Controller
{
    // Menampilkan interaksi dengan filter tanggal dan pagination
    public function index(Request $request)
    {
        $query = Interaction::with('contact');  // Mengambil data interaksi dengan relasi kontak

        // Filter berdasarkan tanggal jika ada
        if ($request->has('date') && $request->date != '') {
            $query->whereDate('interaction_date', $request->date);
        }

        // Menampilkan interaksi berdasarkan tanggal terbaru dan melakukan pagination (10 data per halaman)
        $interactions = $query->orderBy('interaction_date', 'desc')->get();

        return view('interactions.index', compact('interactions')); // Mengirim data ke view
    }

    // Form untuk menambah interaksi
    public function create()
    {
        return view('interactions.create');
    }

}
