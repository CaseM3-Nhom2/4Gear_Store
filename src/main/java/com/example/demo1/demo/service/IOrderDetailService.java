package com.example.demo1.demo.service;



import java.sql.SQLException;

public interface IOrderDetailService {
    void addOrderDetail(int orderId, int productId, int quantity) throws SQLException;


}
