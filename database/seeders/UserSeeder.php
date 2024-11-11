<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;  // Pastikan DB di-import
use App\Models\User;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        // Menghapus semua data users sebelum menambahkan yang baru
        DB::table('users')->truncate();

        // Menambahkan pengguna admin
        User::create([
            'name' => 'Admin User',
            'email' => 'admin@exam.com',
            'password' => Hash::make('asdasdasd'),
            'role' => 'admin',  // Menambahkan role 'admin'
        ]);

        // Menambahkan pengguna sales
        User::create([
            'name' => 'Sales User',
            'email' => 'sales@exam.com',
            'password' => Hash::make('asdasdasd'),
            'role' => 'sales',  // Menambahkan role 'sales'
        ]);

        // Menambahkan pengguna manager
        User::create([
            'name' => 'Manager User',
            'email' => 'manager@exam.com',
            'password' => Hash::make('asdasdasd'),
            'role' => 'manager',  // Menambahkan role 'manager'
        ]);
    }
}
