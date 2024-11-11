<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class CheckRole
{
    public function handle(Request $request, Closure $next, $role)
    {
        // Cek apakah pengguna yang login memiliki role yang sesuai
        if ($request->user() && $request->user()->role == $role) {
            return $next($request);
        }

        // Jika tidak, redirect ke halaman yang sesuai
        return redirect('/'); // Atau halaman lain
    }
}

