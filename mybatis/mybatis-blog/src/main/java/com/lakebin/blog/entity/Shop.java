package com.lakebin.blog.entity;

import java.io.Serializable;
import java.util.List;

/**
 * @author hubin.f
 * @date 2020/5/9 9:59
 */
public class Shop implements Serializable {
    private Long shopId;
    private String shopName;
    private List<Integer> businessScope;

    public Long getShopId() {
        return shopId;
    }

    public void setShopId(Long shopId) {
        this.shopId = shopId;
    }

    public String getShopName() {
        return shopName;
    }

    public void setShopName(String shopName) {
        this.shopName = shopName;
    }

    public List<Integer> getBusinessScope() {
        return businessScope;
    }

    public void setBusinessScope(List<Integer> businessScope) {
        this.businessScope = businessScope;
    }

    @Override
    public String toString() {
        return "Shop{" +
                "shopId=" + shopId +
                ", shopName='" + shopName + '\'' +
                ", businessScope=" + businessScope +
                '}';
    }
}
