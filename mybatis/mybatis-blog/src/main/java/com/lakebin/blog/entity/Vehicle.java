package com.lakebin.blog.entity;

import java.util.Date;

public class Vehicle {
    private Integer id;

    private String vin;

    private Date year;

    private String make;

    private String model;

    private String color;

    private Integer vehicleType;

    private Integer doorCount;

    private Boolean allWheelDrive;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getVin() {
        return vin;
    }

    public void setVin(String vin) {
        this.vin = vin == null ? null : vin.trim();
    }

    public Date getYear() {
        return year;
    }

    public void setYear(Date year) {
        this.year = year;
    }

    public String getMake() {
        return make;
    }

    public void setMake(String make) {
        this.make = make == null ? null : make.trim();
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model == null ? null : model.trim();
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color == null ? null : color.trim();
    }

    public Integer getVehicleType() {
        return vehicleType;
    }

    public void setVehicleType(Integer vehicleType) {
        this.vehicleType = vehicleType;
    }

    public Integer getDoorCount() {
        return doorCount;
    }

    public void setDoorCount(Integer doorCount) {
        this.doorCount = doorCount;
    }

    public Boolean getAllWheelDrive() {
        return allWheelDrive;
    }

    public void setAllWheelDrive(Boolean allWheelDrive) {
        this.allWheelDrive = allWheelDrive;
    }
}