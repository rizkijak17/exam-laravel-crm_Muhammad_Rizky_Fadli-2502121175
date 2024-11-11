<template>
    <div>
        <h2>Sales Funnel</h2>
        <canvas id="salesFunnelChart"></canvas>
    </div>
</template>

<script>
// Mengimpor komponen dari vue-chartjs
import { Line } from 'vue-chartjs';
import { Chart as ChartJS, Title, Tooltip, LineElement, CategoryScale, LinearScale, PointElement } from 'chart.js';

export default {
    components: {
        Line
    },
    data() {
        return {
            funnelData: {
                labels: ['Lead Generation', 'Lead Qualification', 'Conversion', 'Retention'],
                datasets: [
                    {
                        label: 'Sales Funnel',
                        data: [0, 0, 0, 0], // Placeholder data, akan diganti setelah data diambil
                        backgroundColor: 'rgba(75, 192, 192, 0.2)',
                        borderColor: 'rgba(75, 192, 192, 1)',
                        borderWidth: 1
                    }
                ]
            }
        }
    },
    mounted() {
        this.fetchSalesFunnelData(); // Mengambil data saat komponen dimuat
    },
    methods: {
        async fetchSalesFunnelData() {
            try {
                const response = await axios.get('/api/sales-funnel'); // Ambil data dari API
                this.funnelData.datasets[0].data = [
                    response.data.leadGeneration,
                    response.data.leadQualification,
                    response.data.conversion,
                    response.data.retention
                ];

                // Inisialisasi dan render chart setelah data diperbarui
                new ChartJS(document.getElementById('salesFunnelChart'), {
                    type: 'line',
                    data: this.funnelData,
                    options: {
                        responsive: true,
                        plugins: {
                            title: {
                                display: true,
                                text: 'Sales Funnel'
                            },
                            tooltip: {
                                callbacks: {
                                    label: function(tooltipItem) {
                                        return tooltipItem.raw + '%'; // Menambahkan tanda persen pada tooltip
                                    }
                                }
                            }
                        }
                    }
                });
            } catch (error) {
                console.error('Gagal memuat data sales funnel', error);
            }
        }
    }
}
</script>

<style scoped>
/* CSS khusus untuk komponen ini */
canvas {
    width: 100% !important;
    height: 400px !important;
}
</style>
