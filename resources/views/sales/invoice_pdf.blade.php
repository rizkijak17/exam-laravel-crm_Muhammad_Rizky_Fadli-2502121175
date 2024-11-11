<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faktur Penjualan</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 20px auto;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .header {
            text-align: center;
            font-size: 24px;
        }
        .details {
            margin-top: 20px;
        }
        .details table {
            width: 100%;
            border-collapse: collapse;
        }
        .details table th, .details table td {
            padding: 8px;
            border: 1px solid #ddd;
        }
        .total {
            margin-top: 20px;
            font-size: 18px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Faktur Penjualan</h1>
            <p>Faktur untuk {{ $contact->name }}</p>
        </div>

        <div class="details">
            <table>
                <tr>
                    <th>Tanggal Penjualan</th>
                    <td>{{ \Carbon\Carbon::parse($sale->sale_date)->format('Y-m-d H:i') }}</td>
                </tr>
                <tr>
                    <th>Jumlah Penjualan</th>
                    <td>{{ number_format($sale->amount, 2) }}</td>
                </tr>
                <tr>
                    <th>Deskripsi</th>
                    <td>{{ $description }}</td>
                </tr>
            </table>
        </div>

        <div class="total">
            <p>Total: {{ number_format($sale->amount, 2) }}</p>
        </div>
    </div>
</body>
</html>
