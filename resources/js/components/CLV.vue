<template>
    <div>
        <h2>Customer Lifetime Value</h2>
        <div>
            <p v-if="clv">Customer Lifetime Value: {{ clv }}</p>
            <button @click="fetchCLV">Get CLV</button>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            clv: null
        };
    },
    methods: {
        async fetchCLV() {
            const response = await axios.get('/api/clv/1'); // ID customer yang ingin dihitung CLV-nya
            this.clv = response.data.clv;
        }
    }
}
</script>
