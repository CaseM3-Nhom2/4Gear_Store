package com.example.demo1.demo.repository.user;

import java.sql.SQLException;

public interface IOrderDetailRepository {
    void addOrderDetail(int orderId, int productId, int quantity) throws SQLException;
     void updateOrderDetail(int orderDetailId, int quantity) throws SQLException;
}
