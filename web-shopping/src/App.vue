<template>
    <div id="app">
        <!-- <img alt="Vue logo" src="./assets/logo.png"> -->
        <!-- <HelloWorld msg="Welcome to Your Vue.js App"/> -->
        <div class="main">
            <Head></Head>
            <Main></Main>
        </div>
    </div>
</template>

<script>
    // import HelloWorld from './components/HelloWorld.vue';
    import Head from './components/Head.vue';
    import Main from './components/Main.vue';
    

    export default {
        name: 'App',
        components: {
            Head,
            Main
        }
    }
</script>

<style>
</style>
