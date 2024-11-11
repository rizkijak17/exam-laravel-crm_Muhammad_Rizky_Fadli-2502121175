<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CustomerSegment extends Model
{
    use HasFactory;

    protected $fillable = ['segment_name'];

    public function contacts()
    {
        return $this->hasMany(Contact::class);
    }
}
