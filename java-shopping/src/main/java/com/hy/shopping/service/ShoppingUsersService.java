package com.hy.shopping.service;

import com.hy.shopping.entity.ShoppingUsers;
import com.hy.shopping.mapper.ShoppingUsersMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ShoppingUsersService {
    @Autowired
    private ShoppingUsersMapper shoppingUsersMapper;
    public ShoppingUsers findByUsersIdShoppingUsers(Long usersId) {
        return shoppingUsersMapper.findByUsersIdShoppingUsers(usersId);
    }
}
