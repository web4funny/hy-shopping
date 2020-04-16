<template>
    <div class="">
        <section class="w mt30 clearfix">
            <div class="gray-box">
                <div class="title">
                    <h2>官方精选</h2>
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
    name: 'Choiceness',
    data: () => {
        return {
            goodsList: [
                {
                    "img": "https://resource.smartisan.com/resource/a5e102c24a38ee7d7a38d88b18ea157e.png?x-oss-process=image/resize,w_750"
                },
                {
                    "img": "https://resource.smartisan.com/resource/db1f9c8eadd0164a34e73465a34776a3.jpg?x-oss-process=image/resize,w_270",
                    "title": "坚果 Pro 3 足迹保护套 德国天文学家开普勒出生",
                    "subTitle": "这一次，两面都有好故事",
                    "currencyUnit": "￥",
                    "moneies": "49.00"
                },
                {
                    "img": "https://resource.smartisan.com/resource/63ea40e5c64db1c6b1d480c48fe01272.jpg",
                    "title": "坚果 3 绒布国旗保护套",
                    "subTitle": "质感精良、完美贴合、周到防护",
                    "currencyUnit": "￥",
                    "moneies": "79.00"
                },
                {
                    "img": "https://resource.smartisan.com/resource/f060313b58a72053a89e1309bac4c3ab.jpg?x-oss-process=image/resize,w_270",
                    "title": "足迹保护套 莫里斯·詹姆士·麦当劳出生 for iPhone 11",
                    "subTitle": "这一次，两面都有好故事",
                    "currencyUnit": "￥",
                    "moneies": "89.00"
                },
                {
                    "img": "https://resource.smartisan.com/resource/10525c4b21f039fc8ccb42cd1586f5cd.jpg",
                    "title": "Smartisan 半入耳式耳机",
                    "subTitle": "经典配色、专业调音、高品质麦克风",
                    "currencyUnit": "￥",
                    "moneies": "129.00"
                },
                {
                    "img": "https://resource.smartisan.com/resource/b899d9b82c4bc2710492a26af021d484.jpg",
                    "title": "坚果 3 TPU 软胶保护套",
                    "subTitle": "TPU 环保材质、完美贴合、周到防护",
                    "currencyUnit": "￥",
                    "moneies": "49.00"
                },
                {
                    "img": "https://resource.smartisan.com/resource/abb6986430536cd9365352b434f3c568.jpg",
                    "title": "坚果 3 \"足迹\"背贴 乐高创始人出生",
                    "subTitle": "1891 年 4 月 7 日",
                    "currencyUnit": "￥",
                    "moneies": "79.00"
                }
            ]
        }
    }
}
</script>
<style scoped>

</style>