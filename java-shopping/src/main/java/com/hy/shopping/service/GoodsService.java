package com.hy.shopping.service;

import com.hy.shopping.entity.Goods;
import com.hy.shopping.mapper.GoodsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsService {
    @Autowired
    private GoodsMapper goodsMapper;
    public List<Goods>  findAllGoods() {
        return goodsMapper.findAllGoods();
    }
}
