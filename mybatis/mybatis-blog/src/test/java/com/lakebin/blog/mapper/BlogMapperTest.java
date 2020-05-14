package com.lakebin.blog.mapper;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lakebin.blog.config.MybatisUtils;
import com.lakebin.blog.entity.Blog;
import com.lakebin.blog.entity.BlogExample;
import com.lakebin.blog.qo.BlogQo;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.List;

/**
 * @author hubin.f
 * @date 2020/2/8 10:32
 */
@Slf4j
public class BlogMapperTest extends AbstractMapperTest<BlogMapper> {

    @Test
    public void testMapperProxy() {
        mapper.toString();
    }

    @Test
    public void countByExample() {
    }

    @Test
    public void deleteByExample() {
    }

    @Test
    public void deleteByPrimaryKey() {
    }

    @Test
    public void insert() {
    }

    @Test
    public void insertSelective() {
    }

    @Test
    public void selectByExample() {
        BlogExample blogExample = new BlogExample();
        PageHelper.startPage(2, 2);
        List<Blog> blogs = mapper.selectByExample(blogExample);
        session.close();
        PageInfo<Blog> pageInfo = new PageInfo<>(blogs);
        log.info(pageInfo.toString());
    }

    @Test
    public void selectByExample1() {
        BlogQo qo = new BlogQo(2, 2);
        Page<Blog> blogs = mapper.queryList(qo);
        session.close();
        PageInfo<Blog> pageInfo = new PageInfo<>(blogs);
        log.info(pageInfo.toString());
    }

    @Test
    public void selectByPrimaryKey() {
        Blog blog = mapper.selectByPrimaryKey(1);
        System.out.println("第一次查询结束---------" + blog.getStyle());
        new Thread(() -> {
            System.out.println("开始更新");
            SqlSession sqlSession = MybatisUtils.getSqlSession();
            BlogMapper blogMapper = sqlSession.getMapper(BlogMapper.class);
            blog.setState("red");
            blogMapper.updateByPrimaryKey(blog);
            sqlSession.commit();
            sqlSession.close();
            System.out.println("异步线程已提交更新");
        }).start();
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        System.out.println("第二次查询开始");
        Blog blog1 = mapper.selectByPrimaryKey(1);
        System.out.println("第二次查询结束---------" + blog1.getStyle());
    }

    @Test
    public void selectByPrimaryKey1() {
        Blog blog = mapper.selectByPrimaryKey(1);
        log.info(blog.toString());
        new Thread(()->{
            SqlSession sqlSession = MybatisUtils.getSqlSession();
            BlogMapper blogMapper = sqlSession.getMapper(BlogMapper.class);
            blogMapper.selectByPrimaryKey(1);
            sqlSession.close();
        }).start();
    }

    @Test
    public void updateByExampleSelective() {
    }

    @Test
    public void updateByExample() {
    }

    @Test
    public void updateByPrimaryKeySelective() {
    }

    @Test
    public void updateByPrimaryKey() {
    }

    @Override
    public Class<BlogMapper> getEntityClass() {
        return BlogMapper.class;
    }
}
