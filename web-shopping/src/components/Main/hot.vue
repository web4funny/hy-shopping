<template>
    <div >
        <!---->
        <section class="w mt30 clearfix">
            <div class="gray-box">
                <div class="title">
                    <h2 >热门商品</h2>
                    <div ></div>
                </div>
                <div >
                    <div class="hot">
                        <div v-for="(good, index) in hotGoods" v-bind:key="index" class="good-item">
                            <div >
                                <div class="good-img">
                                    <a ><img 
                                            :data-src="good.img"
                                            :src="good.img"
                                            :alt="good.alt"></a>
                                </div>
                                <h6 class="good-title">{{good.title}}</h6>
                                <h3 class="sub-title ellipsis">{{good.description}}</h3>
                                <div class="good-price pr">
                                    <div class="ds pa">
                                        <a >
                                            <input class="default-btn" 
                                                 type="button" readonly="readonly"
                                                value="查看详情" style="margin: 0px 5px;">
                                        </a>
                                        <input class="main-btn"  
                                            type="button" readonly="readonly" value="加入购物车"
                                            style="margin: 0px 5px;">
                                    </div>
                                    <p >
                                        <span  style="font-size: 14px;">{{good.currencyUnit}}</span>
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
    name: 'hot',

    data: () => {
        return {
            hotGoods: [
                {
                    img: 'https://i.loli.net/2018/07/13/5b48a7f468bf2.png',
                    alt: '支付测试商品 IPhone 11 Pro Max 4G手机 双卡双待',
                    title: '支付测试商品 IPhone 11 Pro Max 4G手机 双卡双待',
                    description: '此仅为测试商品 拍下不会发货',
                    currencyUnit: '￥',
                    moneies: 5899,
                },
                {
                    img: 'https://resource.smartisan.com/resource/f195e666e089d4e3775ce67d8e9523ce.png?x-oss-process=image/resize,w_270',
                    alt: '支付测试商品 IPhone 11 Pro Max 4G手机 双卡双待',
                    title: '坚果 Pro 3',
                    description: '高通骁龙™ 855Plus · 4800 万模范四摄 · Smartisan OS 7.0 ',
                    currencyUnit: '￥',
                    moneies: 4999,
                }
            ]
        }
    }
}
</script>

<style scoped>

</style>