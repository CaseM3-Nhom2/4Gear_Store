package com.example.demo1.demo.repository.user;



import com.example.demo1.demo.model.Order;
import com.example.demo1.demo.model.OrderDetail;

import java.sql.SQLException;
import java.util.List;

public interface IOrderRepository {
    boolean addOrder(int userId) throws SQLException;
    void updateOrderStatus(int orderId, String status) throws SQLException;
    void deleteOrder(int orderId) throws SQLException;
    Order getOrder(int orderId) throws SQLException;
    List<Order> getOrdersByUserId(int userId) throws SQLException;
    public List<OrderDetail> getOrderDetails(int orderId) throws SQLException;
    public double getOrderTotal(int orderId) throws SQLException;
}
