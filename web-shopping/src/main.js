import Vue from 'vue'
import App from './App.vue'
Vue.config.productionTip = false
// import $ from 'jquery'
// window.jquery = window.$ = $
new Vue({
    render: h => h(App),
}).$mount('#app')
