<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laravel CRM</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }

        header {
            background-color: #343a40;
            padding: 10px 0;
        }

        .navbar-brand {
            color: white;
            font-weight: bold;
            font-size: 1.8rem;
        }

        .navbar-nav .nav-link {
            color: #dcdcdc;
            font-size: 1.1rem;
            padding: 10px 15px;
        }

        .navbar-nav .nav-link:hover {
            color: #ffffff;
            background-color: #495057;
        }

        footer {
            background-color: #343a40;
            color: #dcdcdc;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            width: 100%;
            bottom: 0;
	    margin-top: auto;
        }

        .container {
            margin-top: 20px;
        }

        .table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
        }

        .table th,
        .table td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .table th {
            background-color: #007bff;
            color: white;
        }

        .table tr:hover {
            background-color: #f1f1f1;
        }

        .btn-custom {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
        }

        .btn-custom:hover {
            background-color: #0056b3;
        }

        .form-control {
            border-radius: 5px;
            box-shadow: none;
            margin-bottom: 10px;
        }

        .form-label {
            font-size: 1.1rem;
            font-weight: 600;
        }

        /* Hapus pagination inline yang tidak perlu */
       // .pagination {
         //   display: none;  /* Menyembunyikan pagination */
       // }
    </style>
</head>

<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container">
                <a class="navbar-brand" href="{{ auth()->check() ? route('home') : url('/') }}">Laravel CRM</a>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        @if(Auth::check())
                            <li class="nav-item"><a class="nav-link" href="{{ route('contacts.index') }}">Contacts</a></li>
                            <li class="nav-item"><a class="nav-link" href="{{ route('sales.index') }}">Sales</a></li>
                            <li class="nav-item"><a class="nav-link" href="{{ route('reports.index') }}">Reports</a></li>
                            <li class="nav-item"><a class="nav-link" href="{{ route('interactions.index') }}">Interactions</a></li>
                            <li class="nav-item">
                                <form action="{{ route('logout') }}" method="POST" style="display: inline;">
                                    @csrf
                                    <button type="submit" class="btn btn-link nav-link text-light" style="text-decoration: none;">Logout</button>
                                </form>
                            </li>
                        @else
                            <li class="nav-item"><a class="nav-link" href="{{ route('login') }}">Login</a></li>
                            <li class="nav-item"><a class="nav-link" href="{{ route('register') }}">Register</a></li>
                        @endif
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <main class="container">
        @yield('content')
    </main>

    <footer>
        <p>&copy; 2024 Laravel CRM. All Rights Reserved.</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

