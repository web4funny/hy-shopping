package com.hy.shopping.mapper;

import com.hy.shopping.entity.ShoppingUsers;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Controller;

@Mapper
@Controller
public interface ShoppingUsersMapper {
    ShoppingUsers findByUsersIdShoppingUsers(Long usersId);
}
