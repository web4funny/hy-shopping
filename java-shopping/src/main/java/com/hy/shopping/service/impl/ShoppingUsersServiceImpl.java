package com.hy.shopping.service.impl;

import com.hy.shopping.entity.ShoppingUsers;
import com.hy.shopping.mapper.ShoppingUsersMapper;
import com.hy.shopping.service.ShoppingUsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ShoppingUsersServiceImpl implements ShoppingUsersService {
    @Autowired
    private ShoppingUsersMapper shoppingUsersMapper;
    @Override
    public ShoppingUsers findByUsersIdShoppingUsers(Long usersId) {
        return shoppingUsersMapper.findByUsersIdShoppingUsers(usersId);
    }

    @Override
    public ShoppingUsers findByUsersNameAndUsersPasswordShoppingUsers(String usersName, String usersPassword) {
        return shoppingUsersMapper.findByUsersNameAndUsersPasswordShoppingUsers(usersName, usersPassword);
    }
}
