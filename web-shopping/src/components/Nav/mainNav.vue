<template>
    <header class="w" >
        <div class="w-box" >
            <div class="nav-logo" >
                <h1 >
                    <a class="router-link-active"  href="#/"
                        title="XMall商城官网">XMall商城官网</a>
                </h1>
            </div>
            <div class="right-box" >
                <div class="nav-list" >
                    <div class="el-autocomplete"  minlength="1" maxlength="100">
                        <div class="el-input" props="[object Object]"
                            fetchsuggestions="function() { [native code] }" triggeronfocus="true">
                            <!---->
                            <i class="el-input__icon el-icon-search is-clickable"></i>
                            <input class="el-input__inner" autocomplete="off" placeholder="请输入商品信息"
                                icon="search" type="text" rows="2" validateevent="true">
                            <!---->
                            <!---->
                        </div>
                    </div>
                    <a class=""  href="#/goods"><object><a
                                >全部商品</a></object></a>
                    <a class=""  href="#/thanks"><object><a
                                >捐赠</a></object></a>
                </div>
                <div class="nav-aside" >
                    <div class="user pr" >
                        <a class=""  href="login.html">个人中心</a>
                    </div>
                    <div class="shop pr" >
                        <a class=""  href="#/cart"></a>
                        <span class="cart-num" >
                            <i class="num no" >0</i>
                        </span>
                        <div class="nav-user-wrapper pa active" 
                            style="display: none;">
                            <div class="nav-user-list" >
                                <div class="full"  style="display: none;">
                                    <div class="nav-cart-items">
                                        <ul class="product_list" >
                                        </ul>
                                    </div>
                                    <div class="nav-cart-total" >
                                        <p >
                                            共
                                            <strong ></strong>
                                            件商品
                                        </p>
                                        <h5 >
                                            合计：
                                            <span class="price-icon" >￥</span>
                                            <span class="price-num" ></span>
                                        </h5>
                                        <h6 >
                                            <input class="main-btn" data-v-612d7650=""
                                                    type="button" readonly="readonly"
                                                value="去购物车"
                                                style="height: 40px; width: 100%; margin: 0px; color: rgb(255, 255, 255); font-size: 14px; line-height: 38px;">
                                        </h6>
                                    </div>
                                </div>
                                <div class="cart-con" 
                                    style="height: 313px; text-align: center;">
                                    <p >您的购物车竟然是空的！</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
</template>

<script> 
    export default {
        name: 'Nav',
        title: '',
    }
</script>

<style lang="less">
</style>