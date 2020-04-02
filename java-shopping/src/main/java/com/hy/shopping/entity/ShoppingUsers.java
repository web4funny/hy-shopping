package com.hy.shopping.entity;

import lombok.Data;

@Data
public class ShoppingUsers {
    private Long usersId;
    private String usersName;
    private String usersPassword;
    private Long gmtCreate;
    private Long gmtModified;
    private String bio;
    private UsersAvatar usersAvatar;
}
