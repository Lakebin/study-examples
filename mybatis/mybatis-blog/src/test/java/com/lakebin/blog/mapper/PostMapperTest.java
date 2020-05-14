package com.lakebin.blog.mapper;

import com.lakebin.blog.entity.Post;
import com.lakebin.blog.entity.PostExample;
import org.junit.Test;

import java.util.List;

/**
 * @author hubin.f
 * @date 2020/2/8 12:09
 */
public class PostMapperTest extends AbstractMapperTest<PostMapper> {


    @Test
    public void selectByExample() {
        List<Post> posts = mapper.selectByExample(new PostExample());
        System.out.println(posts);
    }

    @Test
    public void selectById() {
        Post post = mapper.selectByPrimaryKey(1);
//        System.out.println(post);
    }

    @Override
    public Class<PostMapper> getEntityClass() {
        return PostMapper.class;
    }
}
