package com.lakebin.blog.entity;

import lombok.Data;

import java.util.Date;

@Data
public class Comment {
    private Integer id;

    private Post post;

    private String name;

    private String comment;

    private Date createOn;

    private Integer authorId;

}