<template>
    <div id="app">
        <!-- <img alt="Vue logo" src="./assets/logo.png"> -->
        <!-- <HelloWorld msg="Welcome to Your Vue.js App"/> -->
        <div class="main">
            <Head></Head>
            <Main></Main>
            <Choiceness></Choiceness>
            <Peripherals></Peripherals>
            <Trademark></Trademark>
            <ActivityPanel></ActivityPanel>
            <Footer> </Footer>
        </div>
    </div>
</template>

<script>
    // import HelloWorld from './components/HelloWorld.vue';
    import Head from './components/Head.vue';
    import Main from './components/Main.vue';
    import Choiceness from './components/Choiceness';
    import Peripherals from './components/Peripherals';
    import Trademark from './components/Trademark';
    import ActivityPanel from './components/ActivityPanel';
    import Footer from './components/Footer';
    

    export default {
        name: 'App',
        components: {
            Head,
            Main,
            Choiceness,
            Peripherals,
            Trademark,
            ActivityPanel,
            Footer
        }
    }
</script>

<style>
</style>
