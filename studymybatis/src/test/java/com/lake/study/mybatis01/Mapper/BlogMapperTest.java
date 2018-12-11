package com.lake.study.mybatis01.Mapper;

import com.lake.study.mybatis01.mapper.BlogMapper;
import com.lake.study.mybatis01.pojo.Blog;
import com.lake.study.mybatis01.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.List;

/**
 * studymybatis
 *
 * @author Lake Fang
 * @date 2018-12-09 16:56
 */
public class BlogMapperTest {
    @Test
    public void testFindOne() {
        SqlSession sqlSession = MyBatisUtil.openSqlSession();
//        Blog blog = sqlSession.selectOne("com.lake.study.mybatis01.mapper.BlogMapper.findOne", 1);
        BlogMapper blogMapper = sqlSession.getMapper(BlogMapper.class);
        Blog blog = blogMapper.findOne(1);
        System.out.println(blog);
        sqlSession.close();
    }

    @Test
    public void testFindOne2() {
        SqlSession sqlSession = MyBatisUtil.openSqlSession();
//        Blog blog = sqlSession.selectOne("com.lake.study.mybatis01.mapper.BlogMapper.findOne", 1);
        BlogMapper blogMapper = sqlSession.getMapper(BlogMapper.class);
        Blog blog = blogMapper.findOne2(1);
        System.out.println(blog);
        sqlSession.close();
    }

    @Test
    public void testSelectOne() {
        SqlSession sqlSession = MyBatisUtil.openSqlSession();
        BlogMapper blogMapper = sqlSession.getMapper(BlogMapper.class);
        Blog blog = blogMapper.selectBlog2(1);
        System.out.println(blog);
        sqlSession.close();
    }

    @Test
    public void testfindBlogLikeTitle() {
        SqlSession sqlSession = MyBatisUtil.openSqlSession();
        BlogMapper blogMapper = sqlSession.getMapper(BlogMapper.class);
        List<Blog> blogs = blogMapper.findBlogLikeTitle("%h%");
        System.out.println(blogs);
        sqlSession.close();
    }

    @Test
    public void testselectBlogByTitle() {
        SqlSession sqlSession = MyBatisUtil.openSqlSession();
        BlogMapper blogMapper = sqlSession.getMapper(BlogMapper.class);
        List<Blog> blogs = blogMapper.selectBlogByTitle("魅族");
        System.out.println(blogs);
        sqlSession.close();
    }
}
