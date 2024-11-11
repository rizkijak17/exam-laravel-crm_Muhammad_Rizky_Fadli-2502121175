<!-- resources/views/reports/index.blade.php -->
<!-- Note sudah mencoba coba tetapi tidak bisa untuk menampilkan data real -->

@extends('layouts.app')

@section('content')
<!-- Dashboard Header -->
<div class="container mt-5">
    <div class="row">
        <div class="col-12">
            <div class="alert alert-primary" role="alert">
                <h3>Selamat datang di halaman laporan CRM! Di sini Anda bisa melihat berbagai laporan terkait penjualan dan segmentasi pelanggan.</h3>
            </div>
        </div>

        <!-- Sales Funnel Chart -->
        <div class="col-md-6 mb-4">
            <div class="card shadow-sm">
                <div class="card-header">
                    <h5>Sales Funnel Overview</h5>
                </div>
                <div class="card-body">
                    <canvas id="salesFunnelChart"></canvas>
                </div>
            </div>
        </div>

        <!-- Customer Lifetime Value (CLV) -->
        <div class="col-md-6 mb-4">
            <div class="card shadow-sm">
                <div class="card-header">
                    <h5>Customer Lifetime Value (CLV)</h5>
                </div>
                <div class="card-body">
                    <p id="clv">Total CLV: $11.00</p>
                    <button class="btn btn-primary" id="fetchCLV">Calculate CLV</button>
                </div>
            </div>
        </div>
        
        <!-- Customer Segmentation -->
        <div class="col-12 mb-4">
            <div class="card shadow-sm">
                <div class="card-header">
                    <h5>Customer Segmentation</h5>
                </div>
                <div class="card-body">
                    <p><strong>Segment 1:</strong> Premium Customers (25%)</p>
                    <p><strong>Segment 2:</strong> Regular Customers (50%)</p>
                    <p><strong>Segment 3:</strong> New Customers (25%)</p>
                </div>
            </div>
        </div>

    </div>
</div>

<!-- Include Chart.js -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<script>
    // Sales Funnel Chart
    var ctx1 = document.getElementById('salesFunnelChart').getContext('2d');
    var salesFunnelChart = new Chart(ctx1, {
        type: 'bar',
        data: {
            labels: ['Lead Generation', 'Lead Qualification', 'Conversion', 'Retention'],
            datasets: [{
                label: 'Sales Funnel',
                data: [25, 18, 12, 8],
                backgroundColor: ['rgba(255, 99, 132, 0.2)', 'rgba(54, 162, 235, 0.2)', 'rgba(255, 206, 86, 0.2)', 'rgba(75, 192, 192, 0.2)'],
                borderColor: ['rgba(255, 99, 132, 1)', 'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)', 'rgba(75, 192, 192, 1)'],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
</script>
@endsection
