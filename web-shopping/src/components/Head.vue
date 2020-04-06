<template>
    <div class="header-box">
        <div >
           <Nav></Nav>
           <SubNav></SubNav>
        </div>
    </div>
</template>

<script>
    import Nav from './Nav/mainNav.vue';
    import SubNav from './Nav/subNav.vue';
     export default {
        name: 'App',
        components: {
            Nav,
            SubNav
        }
    }
</script>

<style lang="less">
      
</style>