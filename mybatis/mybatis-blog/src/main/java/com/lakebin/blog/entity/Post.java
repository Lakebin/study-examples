package com.lakebin.blog.entity;

import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
public class Post {
    private Integer id;

    private Integer blogId;

    private Integer authorId;

    private Date createOn;

    private String section;

    private String subject;

    private Integer visit;

    private List<Comment> comments;
}