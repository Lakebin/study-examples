package com.lakebin.blog.mapper;

import com.lakebin.blog.entity.Shop;

import java.util.List;

/**
 * @author hubin.f
 * @date 2020/5/9 9:58
 */
public interface ShopMapper {

    int insert(Shop shop);

    List<Shop> findAll();
}
