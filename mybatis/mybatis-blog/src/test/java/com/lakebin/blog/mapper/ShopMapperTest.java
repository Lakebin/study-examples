package com.lakebin.blog.mapper;

import com.lakebin.blog.entity.Shop;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.List;

/**
 * @author hubin.f
 * @date 2020/5/9 10:33
 */

public class ShopMapperTest {
    private static final Logger log = LoggerFactory.getLogger(ShopMapperTest.class);
    private SqlSession sqlSession;
    private ShopMapper shopMapper;
    @Before
    public void before() throws IOException {
        InputStream is = Resources.getResourceAsStream("mybatis-configuration.xml");
        sqlSession = new SqlSessionFactoryBuilder().build(is).openSession();
        shopMapper = sqlSession.getMapper(ShopMapper.class);
    }

    @After
    public void after() {
        sqlSession.close();
    }

    @Test
    public void testInsert() {
        Shop shop = new Shop();
        shop.setShopName("天猫");
        shop.setBusinessScope(Arrays.asList(1, 3, 5, 6));
        shopMapper.insert(shop);
        sqlSession.commit();
    }

    @Test
    public void testFindAll() {
        List<Shop> all = shopMapper.findAll();
        log.info("{}", all);
        List<Shop> list = shopMapper.findAll();
        log.info("{}", list);
    }
}
