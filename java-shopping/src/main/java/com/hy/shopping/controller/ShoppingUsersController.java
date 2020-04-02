package com.hy.shopping.controller;

import com.hy.shopping.entity.ShoppingUsers;
import com.hy.shopping.service.ShoppingUsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ShoppingUsersController {
    @Autowired
    private ShoppingUsersService shoppingUsersService;
    @GetMapping("/shoppingUsers/{usersId}")
    public ShoppingUsers findByUsersIdShoppingUsers(@PathVariable("usersId") Long usersId) {
        return shoppingUsersService.findByUsersIdShoppingUsers(usersId);
    }
}
