<template>
    <div class="home main">
        <div elemeent-loading-text="加载中..." style="min-height: 35vw; position: static;">
            <carousel></carousel>     
        </div>
    </div>
</template>
<script>
    import carousel from './Carousel/carousel.vue';
     export default {
        name: 'App',
        components: {
            carousel,
        }
    }
</script>
<style lang="stylus">

</style>