<template>
       <div class="banner" >
                <div class="bg" v-on:mouseover="mouseover()" v-on:mouseout="mouseout()"> 
                <!-- <div  class="">
                    <img class="img1" 
                        src="https://i.loli.net/2019/09/30/CAZ6QrXPBoh5aIT.png">
                    <img class="img2 a" 
                        src="https://i.loli.net/2019/09/30/9Y5MHc8sfhJLk3u.png">
                    <img class="img3 b" 
                        src="https://i.loli.net/2019/09/30/lLv8xp3IWqa7Oz6.png">
                </div>
                <div  class="">
                    <img class="img1" 
                        src="https://i.loli.net/2018/11/04/5bdeba4028e90.png">
                    <img class="img2 a" 
                        src="https://i.loli.net/2018/11/04/5bdebb109a29a.png">
                    <img class="img3 b" 
                        src="https://i.loli.net/2018/11/04/5bdeba6753403.png">
                </div>
                <div  class="">
                    <img class="img1"  
                    src="https://resource.smartisan.com/resource/f1cc61461e08141debf520be50ab362f.png?x-oss-process=image/resize,w_1525/quality,Q_100">
                </div>
                <div  class="">
                    <img class="img1"  
                    src="https://resource.smartisan.com/resource/130e1b36391d9a13ec19d4659abe70a7.png?x-oss-process=image/resize,w_1525/quality,Q_100">
                </div>  -->

                <div v-for="(srcs, index) in srcList" v-bind:key="index" v-bind:style="{'display' : activeIndex === index ? 'block' : 'none'}">
                    <img v-for="(src, z) in srcs" v-bind:key="z" v-bind:class="clazz[z]" :src="src">
                </div>
            </div>
            <div class="page" >
                <ul class="dots" >
                    <li v-for="(srcs, index) in srcList" v-bind:key="index" class="dot-active" v-bind:class="{'dot': activeIndex !== index}" v-on:click="clickDotActive(index)"></li>
                </ul>
            </div>
        </div>
</template>  

<script>
   const $ = window.$;
   export default {
    name: 'carousel',
    data: function() {
      return  {
            clazz: ['img1', 'img2 a', 'img3 b'],
            srcList: [
                ['https://i.loli.net/2019/09/30/CAZ6QrXPBoh5aIT.png', 'https://i.loli.net/2019/09/30/9Y5MHc8sfhJLk3u.png', 'https://i.loli.net/2019/09/30/lLv8xp3IWqa7Oz6.png'],
                ['https://i.loli.net/2018/11/04/5bdeba4028e90.png', 'https://i.loli.net/2018/11/04/5bdebb109a29a.png', 'https://i.loli.net/2018/11/04/5bdeba6753403.png'],
                ['https://resource.smartisan.com/resource/f1cc61461e08141debf520be50ab362f.png?x-oss-process=image/resize,w_1525/quality,Q_100'],
                ['https://resource.smartisan.com/resource/130e1b36391d9a13ec19d4659abe70a7.png?x-oss-process=image/resize,w_1525/quality,Q_100']
            ],
            activeIndex: 0,
            timer: -1,
            delayTime: 4000
        }
    },

    mounted: function() {
        this.run();
    },

    destroyed: function() {
        this.stop();
    },

    // computed: {
    //     clazz: function(i, j) {
    //         return 
    //     }
    // },

    methods: {
        clickDotActive: function(index) {
            console.log('clickDotActive ==>', index);
            this.stop();
            this.activeIndex = index;
            this.run();
        },

        run: function() {
            let len = this.srcList.length;
            this.timer = setInterval( () => {
                console.log('run ==>', len, this.activeIndex );
                this.activeIndex ++;
                this.activeIndex =  this.activeIndex % len;
                $(".bg div").eq(this.activeIndex).show(300).siblings().hide();
            }, this.delayTime);
        },

        stop: function()  {
            clearInterval(this.timer);
        },

        mouseover: function() {
            this.stop();
        },

        mouseout: function() {
            this.run();
         }
        
    }
   }
</script>

<style></style>