<template>
    <div class="home main">
        <div elemeent-loading-text="加载中..." style="min-height: 35vw; position: static;">
            <carousel></carousel>   
            <activity></activity>
            <hot></hot>
        </div>
    </div>
</template>
<script>
    import carousel from './Main/carousel.vue';
    import activity from './Main/activity.vue';
    import hot from './Main/hot.vue';
     export default {
        name: 'App',
        components: {
            carousel,
            activity,
            hot
        }
    }
</script>
<style lang="stylus">

</style>