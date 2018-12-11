package com.lake.study.mybatis01.pojo;

import org.apache.ibatis.type.Alias;

import java.io.Serializable;

/**
 * studymybatis
 *
 * @author Lake Fang
 * @date 2018-12-09 16:25
 */
@Alias("blog")//定义别名
public class Blog implements Serializable {
    private static final long serialVersionUID = -7343875722744187298L;

    private Integer id;
    private String title;
    private Integer authorId;
    private String state;
    private Boolean featured;
    private String style;

    public Blog() {
        super();
    }

    public Blog(Integer id, String title, Integer authorId, String state, Boolean featured, String style) {
        this.id = id;
        this.title = title;
        this.authorId = authorId;
        this.state = state;
        this.featured = featured;
        this.style = style;
    }

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public Integer getAuthorId() {
        return authorId;
    }
    public void setAuthorId(Integer authorId) {
        this.authorId = authorId;
    }
    public String getState() {
        return state;
    }
    public void setState(String state) {
        this.state = state;
    }
    public Boolean getFeatured() {
        return featured;
    }
    public void setFeatured(Boolean featured) {
        this.featured = featured;
    }
    public String getStyle() {
        return style;
    }
    public void setStyle(String style) {
        this.style = style;
    }
    @Override
    public String toString() {
        return "Blog [id=" + id + ", title=" + title + ", authorId=" + authorId + ", state=" + state + ", featured="
                + featured + ", style=" + style + "]\n";
    }


}
