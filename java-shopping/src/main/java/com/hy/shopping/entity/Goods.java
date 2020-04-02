package com.hy.shopping.entity;

import lombok.Data;

@Data
public class Goods {
    private Long goodsId;
    private String goodsName;
    private Long typeId;
    private Double price;
    private String goodsDescribe;
    private Long gmtCreate;
    private Long gmtModified;
    private GoodsType goodsType;
    private GoodsImages goodsImages;
}
