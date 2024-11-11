<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    use HasFactory;

    protected $fillable = [
        'name', 'company', 'email', 'phone', 'customer_segment_id'
    ];

    public function segment()
    {
        return $this->belongsTo(CustomerSegment::class, 'customer_segment_id');
    }
}
