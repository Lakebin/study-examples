package com.lakebin.blog.entity;

import lombok.Data;

@Data
public class Blog {
    private Integer id;

    private String title;

//    private Integer authorId;
    /** 作者，一对多*/
    private Author author;

    private String state;

    private Boolean featured;

    private String style;

}