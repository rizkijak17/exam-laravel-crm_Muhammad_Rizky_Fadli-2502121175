// app/Http/Middleware/RedirectIfAuthenticated.php

public function handle(Request $request, Closure $next)
{
    if (Auth::check()) {
        // Jika sudah login, redirect ke halaman home
        return redirect()->route('home');
    }

    return $next($request);
}
