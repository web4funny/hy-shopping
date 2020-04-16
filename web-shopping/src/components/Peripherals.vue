<template>
    <div class="">
        <section class="w mt30 clearfix">
            <div class="gray-box">
                <div class="title">
                    <h2>品牌周边</h2>
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
    name: 'Peripherals',
    data: () => {
        return {
            goodsList: [
                {
                    "img": "https://resource.smartisan.com/resource/z/zhoubianshangpin1220858web.jpg"
                },
                {
                    "img": "https://resource.smartisan.com/resource/2f9a0f5f3dedf0ed813622003f1b287b.jpg",
                    "title": "Smartisan 帆布鞋",
                    "subTitle": "一双踏实、舒适的帆布鞋",
                    "currencyUnit": "￥",
                    "moneies": "199.00"
                },
                {
                    "img": "https://resource.smartisan.com/resource/2b05dbca9f5a4d0c1270123f42fb834c.jpg",
                    "title": "Smartisan T恤 伍迪·艾伦出生",
                    "subTitle": "一件内外兼修的舒适T恤",
                    "currencyUnit": "￥",
                    "moneies": "149.00"
                },
                {
                    "img": "https://resource.smartisan.com/resource/804edf579887b3e1fae4e20a379be5b5.png",
                    "title": "Smartisan T恤 任天堂发售“红白机”",
                    "subTitle": "100% 美国 SUPIMA 棉、舒适拉绒质地\n                                            ",
                    "currencyUnit": "￥",
                    "moneies": "29.00"
                },
                {
                    "img": "https://resource.smartisan.com/resource/a1c53b5f12dd7ef790cadec0eaeaf466.jpg",
                    "title": "Smartisan 牛津纺衬衫",
                    "subTitle": "一件无拘无束的舒适衬衫",
                    "currencyUnit": "￥",
                    "moneies": "199.00"
                },
                {
                    "img": "https://resource.smartisan.com/resource/daa975651d6d700c0f886718c520ee19.jpg",
                    "title": "Smartisan Polo衫 经典款",
                    "subTitle": "一件表里如一的舒适 POLO 衫",
                    "currencyUnit": "￥",
                    "moneies": "249.00"
                },
                {
                    "img": "https://resource.smartisan.com/resource/3973d009d182d8023bea6250b9a3959e.jpg",
                    "title": "Smartisan 明信片",
                    "subTitle": "优质卡纸、包装精致、色彩饱满",
                    "currencyUnit": "￥",
                    "moneies": "9.90"
                }
            ]
        }
    }
}
</script>
<style scoped>

</style>