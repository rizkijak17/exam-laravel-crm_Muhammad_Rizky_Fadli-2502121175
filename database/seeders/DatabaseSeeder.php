<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run(): void
    {
        // Menjalankan UserSeeder untuk memasukkan data pengguna
        $this->call(UserSeeder::class);
    }
}
