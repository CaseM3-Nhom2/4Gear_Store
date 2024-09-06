package com.example.demo1.demo.model;

import java.sql.Timestamp;

public class Order {
    private int oderId;
    private int userId;
    private Timestamp orderDate;
    private String status;


    public Order(int oderId, int userId, Timestamp orderDate, String status) {
        this.oderId = oderId;
        this.userId = userId;
        this.orderDate = orderDate;
        this.status = status;
    }

    public Order(String status, int userId) {
        this.status = status;
        this.userId = userId;
    }

    public Timestamp getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Timestamp orderDate) {
        this.orderDate = orderDate;
    }

    public int getOderId() {
        return oderId;
    }

    public void setOderId(int oderId) {
        this.oderId = oderId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
