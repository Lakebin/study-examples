package com.lakebin.blog.entity;

import lombok.Data;

@Data
public class Author {
    private Integer id;

    private String username;

    private String password;

    private String email;

    private String bio;

    private String favouriteSection;

    private String nickname;

    private String realname;
}