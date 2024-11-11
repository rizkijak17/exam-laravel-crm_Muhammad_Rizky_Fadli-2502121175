<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Interaction extends Model
{
    use HasFactory;

    // Kolom yang bisa diisi
    protected $fillable = [
        'contact_id', 'type', 'notes', 'interaction_date'
    ];

    // Mengatur format waktu pada kolom interaction_date
    protected $casts = [
        'interaction_date' => 'datetime',
    ];

    // Relasi ke model Contact
    public function contact()
    {
        return $this->belongsTo(Contact::class);
    }

    /**
     * Menambahkan fungsi untuk mencatat interaksi baru.
     *
     * @param int $contactId
     * @param string $type
     * @param string $notes
     * @return void
     */
    public static function logInteraction($contactId, $type, $notes)
    {
        self::create([
            'contact_id' => $contactId,
            'type' => $type,
            'notes' => $notes,
            'interaction_date' => now(),  // Menggunakan waktu sekarang
        ]);
    }
}
