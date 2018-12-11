package com.lake.study.mybatis01.mapper;

import com.lake.study.mybatis01.pojo.Blog;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

/**
 * studymybatis
 *
 * @author Lake Fang
 * @date 2018-12-09 16:28
 */
@Mapper
public interface BlogMapper {
    /* CRUD */
    Blog findOne(Integer id);

    @Select(value = "select * from blog where id = #{id}")
    Blog selectBlog2(Integer id);

    Blog findOne2(Integer id);

    List<Blog> findBlogLikeTitle(String title);

    List<Blog> findBlogLileTitle2(String title);

    @Select(value = "select * from blog where title = #{title}")
    @ResultMap(value = "blogResultMap")
    List<Blog> selectBlogByTitle(String title);

    List<Blog> selectBlogByTitle2(String title);

    List<Blog> selectBlogBySort(String column);

    List<Blog> selectBlogByPage(int offset, int pagesize);

    List<Blog> selectBlogByPage2(
            @Param(value="offset") int offset,
            @Param(value="pagesize") int pagesize);

    List<Blog> selectBlogByPage3(Map<String, Object> map);


    int insertBlog(Blog blog);

    int insertBlogMysql(Blog blog);

    int upadteBlog(Blog blog);

    int deleteBlogById(Integer id);

    /*动态sql*/
    List<Blog> selectActiveBlogByTitle(Blog blog);

    List<Blog> selectActiveBlogByTitleOrStyle(Blog blog);

    List<Blog> selectBlogByCondition(Blog blog);

    int upadteBlogByCondition(Blog blog);

    List<Blog> selectBlogByConditionTrim(Blog blog);

    int upadteBlogByConditionTrim(Blog blog);

    int deleteBlogList(List<Integer> ids);
}
