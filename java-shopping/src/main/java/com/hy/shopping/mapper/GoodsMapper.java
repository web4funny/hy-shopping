package com.hy.shopping.mapper;

import com.hy.shopping.entity.Goods;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Controller;

import java.util.List;

@Mapper
@Controller
public interface GoodsMapper {
    List<Goods> findAllGoods();
}
