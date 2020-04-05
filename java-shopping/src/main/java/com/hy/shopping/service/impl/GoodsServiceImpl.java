package com.hy.shopping.service.impl;

import com.hy.shopping.entity.Goods;
import com.hy.shopping.mapper.GoodsMapper;
import com.hy.shopping.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService {
    @Autowired
    private GoodsMapper goodsMapper;
    @Override
    public List<Goods> findAllGoods() {
        return goodsMapper.findAllGoods();
    }
}
