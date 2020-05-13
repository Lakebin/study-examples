package com.lakebin.demo.mq.rabbit.sample;

import com.lakebin.demo.mq.rabbit.util.RabbitConnectionUtil;
import com.rabbitmq.client.Channel;
import com.rabbitmq.client.Connection;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 消息生产者
 */
public class MessageProducer {
    private static final Logger log = LoggerFactory.getLogger(MessageProducer.class);
    private static final String QUEUE_NAME = "q_sample";

    public static void main(String[] args) throws Exception {
        //获取连接
        Connection connection = RabbitConnectionUtil.getConnection();
        //从连接中创建通道
        Channel channel = connection.createChannel();
        //声明队列
        channel.queueDeclare(QUEUE_NAME, false, true, true, null);
        //消息体
        String message = "Hello RabbitMQ";
        //发送消息
        channel.basicPublish("", QUEUE_NAME, null, message.getBytes());
        log.debug("发送消息：{}", message);
        //关闭通道和连接
        channel.close();
        connection.close();
    }
}
