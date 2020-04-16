<template>
    <div class="">
        <section class="w mt30 clearfix">
            <div class="gray-box">
                <div class="title">
                    <h2>品牌精选</h2>
                    <div></div>
                </div>
                <div>
                    <div class="floors">
                         <div v-for="(good, index) in goodsList"  v-bind:key = "index" v-bind:class="index > 0 ? 'good-item' : 'imgbanner'">
                            <div v-if="index === 0">
                                <img
                                    :data-src="goodsList[0].img"
                                    :src="goodsList[0].img">
                                <a class="cover-link"></a>
                            </div>
                            <div  v-if="index > 0">
                                <div class="good-img">
                                    <a><img
                                            :data-src="good.img"
                                            :src="good.img"></a>
                                </div>
                                <h6 class="good-title">{{good.title}}</h6>
                                <h3 class="sub-title ellipsis">{{good.subTitle}}</h3>
                                <div class="good-price pr">
                                    <div class="ds pa">
                                        <a>
                                            <input class="default-btn"
                                                type="button" readonly="readonly" value="查看详情"
                                                style="margin: 0px 5px;">
                                        </a>
                                        <input class="main-btn"
                                            type="button" readonly="readonly" value="加入购物车"
                                            style="margin: 0px 5px;">
                                    </div>
                                    <p>
                                        <span style="font-size: 14px;">{{good.currencyUnit}}</span>
                                        {{good.moneies}}
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</template>
<script>
export default {
    name: 'Trademark',
    data: () => {
        return {
            goodsList: [
                    {
                        "img": "https://resource.smartisan.com/resource/a/acillouceng1220856.jpg"
                    },
                    {
                        "img": "https://resource.smartisan.com/resource/7ac3af5a92ad791c2b38bfe1e38ee334.jpg",
                        "title": "优点智能 E1 推拉式智能指纹密码锁",
                        "subTitle": "推拉一下，轻松开关",
                        "currencyUnit": "￥",
                        "moneies": "2699.00"
                    },
                    {
                        "img": "https://resource.smartisan.com/resource/41cb562a47d4831e199ed7e2057f3b61.jpg",
                        "title": "极米无屏电视 CC",
                        "subTitle": "720P 高清分辨率、JBL 音响、两万毫安续航力\n                                            ",
                        "currencyUnit": "￥",
                        "moneies": "2799.00"
                    },
                    {
                        "img": "https://resource.smartisan.com/resource/99c548bfc9848a8c95f4e4f7f2bc1095.png",
                        "title": "FIIL Diva Pro 全场景无线降噪耳机",
                        "subTitle": "智能语音交互、高清无损本地存储播放",
                        "currencyUnit": "￥",
                        "moneies": "1499.00"
                    },
                    {
                        "img": "https://resource.smartisan.com/resource/71432ad30288fb860a4389881069b874.png",
                        "title": "畅呼吸智能空气净化器超级除甲醛版",
                        "subTitle": "购新空净 赠价值 699 元活性炭滤芯",
                        "currencyUnit": "￥",
                        "moneies": "2999.00"
                    },
                    {
                        "img": "https://resource.smartisan.com/resource/804b82e4c05516e822667a23ee311f7c.jpg",
                        "title": "FIIL Diva Pro 全场景无线降噪耳机",
                        "subTitle": "智能语音交互、高清无损本地存储播放",
                        "currencyUnit": "￥",
                        "moneies": "1499.00"
                    },
                    {
                        "img": "https://resource.smartisan.com/resource/367d93db1d58f9f3505bc0ec18efaa44.jpg",
                        "title": "FIIL Driifter 脖挂蓝牙耳机",
                        "subTitle": "全天佩戴 抬手就听 HEAC稳连技术",
                        "currencyUnit": "￥",
                        "moneies": "499.00"
                    }
                ]
        }
    }
}
</script>
<style scoped>

</style>