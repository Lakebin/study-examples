package com.lakebin.demo.mq.rabbit.util;

import com.rabbitmq.client.Connection;
import com.rabbitmq.client.ConnectionFactory;

import java.io.IOException;
import java.util.concurrent.TimeoutException;

/**
 * RabbitMq连接工具
 */
public class RabbitConnectionUtil {

    /**
     * 从连接工厂获取连接
     * @return
     * @throws IOException
     * @throws TimeoutException
     */
    public static Connection getConnection() throws IOException, TimeoutException {
        ConnectionFactory factory = new ConnectionFactory();
        factory.setHost("192.168.1.210");
        factory.setVirtualHost("testhost");
        factory.setUsername("admin");
        factory.setPassword("123456");
        //获取连接
        return factory.newConnection();
    }
}
