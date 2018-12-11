package com.lake.study.mybatis01.util;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

/**
 * studymybatis
 *
 * @author Lake Fang
 * @date 2018-12-09 16:44
 */
public class MyBatisUtil {
    private static SqlSessionFactory sqlSessionFactory = null;

    static {
        String resource = "mybatis01/mybatis-config.xml";
        InputStream inputStream = null;
        try {
            inputStream = Resources.getResourceAsStream(resource);
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public MyBatisUtil() {
    }

    public static SqlSession openSqlSession() {
        return sqlSessionFactory.openSession();
    }

//    public static void closeSqlSession() {
//        sqlSessionFactory.openSession().close();
//    }
}
