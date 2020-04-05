package com.hy.shopping.controller;

import com.hy.shopping.entity.Goods;
import com.hy.shopping.service.GoodsService;
import com.hy.shopping.service.impl.GoodsServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class GoodsController {
    @Autowired
    private GoodsServiceImpl goodsService;
    @GetMapping("/goods/findAllGoods")
    public List<Goods> findAllGoods() {
        return goodsService.findAllGoods();
    }
}
