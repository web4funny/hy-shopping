package com.hy.shopping.mapper;

import com.hy.shopping.entity.ShoppingUsers;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Controller;

@Mapper
@Controller
public interface ShoppingUsersMapper {
    ShoppingUsers findByUsersIdShoppingUsers(Long usersId);
    ShoppingUsers findByUsersNameAndUsersPasswordShoppingUsers(String usersName, String usersPassword);
}
