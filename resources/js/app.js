import 'bootstrap/dist/css/bootstrap.min.css';
import 'bootstrap';
import { createApp } from 'vue';
import SalesFunnel from './components/SalesFunnel.vue';
import CLV from './components/CLV.vue';
import CustomerSegment from './components/CustomerSegment.vue';

// Inisialisasi aplikasi Vue 3
const app = createApp({});

// Menambahkan komponen ke aplikasi Vue
app.component('sales-funnel', SalesFunnel);
app.component('clv', CLV);
app.component('customer-segment', CustomerSegment);

// Menentukan elemen yang menjadi root aplikasi Vue
app.mount('#app');
