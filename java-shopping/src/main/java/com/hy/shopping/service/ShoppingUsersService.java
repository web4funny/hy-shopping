package com.hy.shopping.service;

import com.hy.shopping.entity.ShoppingUsers;

public interface ShoppingUsersService {
    ShoppingUsers findByUsersIdShoppingUsers(Long usersId);
    ShoppingUsers findByUsersNameAndUsersPasswordShoppingUsers(String usersName, String usersPassword);
}
