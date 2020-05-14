package com.lakebin.blog.qo;

import com.lakebin.blog.entity.Blog;

/**
 * @author hubin.f
 * @date 2020/2/10 16:00
 */
public class BlogQo extends Blog {
    private Integer pageNum;
    private Integer pageSize;

    public BlogQo(Integer pageNum, Integer pageSize) {
        this.pageNum = pageNum;
        this.pageSize = pageSize;
    }

    public Integer getPageNum() {
        return pageNum;
    }

    public void setPageNum(Integer pageNum) {
        this.pageNum = pageNum;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }
}
