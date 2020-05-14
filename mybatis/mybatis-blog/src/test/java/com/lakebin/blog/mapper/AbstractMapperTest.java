package com.lakebin.blog.mapper;

/**
 * @author hubin.f
 * @date 2020/2/8 12:10
 */

import com.lakebin.blog.config.MybatisUtils;
import org.apache.ibatis.session.SqlSession;
import org.junit.After;
import org.junit.Before;

public abstract class AbstractMapperTest<T> {
    protected SqlSession session;
    protected T mapper;

    public abstract Class<T> getEntityClass();

    @Before
    public void setUp() throws Exception {
        session = MybatisUtils.getSqlSession();
        mapper = session.getMapper(getEntityClass());
    }

    @After
    public void setDown() throws Exception {
        if (null != session) {
            session.close();
        }
    }
}
