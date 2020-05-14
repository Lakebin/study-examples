package com.lakebin.blog.mapper;

import com.github.pagehelper.Page;
import com.lakebin.blog.entity.Blog;
import com.lakebin.blog.entity.BlogExample;
import java.util.List;

import com.lakebin.blog.qo.BlogQo;
import org.apache.ibatis.annotations.Param;

public interface BlogMapper {
    Blog selectById(Integer id);

    long countByExample(BlogExample example);

    int deleteByExample(BlogExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Blog record);

    int insertSelective(Blog record);

    List<Blog> selectByExample(BlogExample example);

    Page<Blog> queryList(BlogQo qo);

//    @Select(value = "select * from blog where id = 2")
    Blog selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Blog record, @Param("example") BlogExample example);

    int updateByExample(@Param("record") Blog record, @Param("example") BlogExample example);

    int updateByPrimaryKeySelective(Blog record);

    int updateByPrimaryKey(Blog record);
}