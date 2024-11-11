<template>
    <div>
        <h2>Customer Segmentation</h2>
        <div>
            <ul>
                <li v-for="segment in segments" :key="segment.age_segment">
                    {{ segment.age_segment }}: {{ segment.count }} Customers
                </li>
            </ul>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            segments: []
        };
    },
    mounted() {
        this.fetchSegments();
    },
    methods: {
        async fetchSegments() {
            const response = await axios.get('/api/customer-segment');
            this.segments = response.data;
        }
    }
}
</script>
