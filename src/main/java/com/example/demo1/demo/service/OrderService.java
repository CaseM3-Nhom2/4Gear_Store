package com.example.demo1.demo.service;

import com.example.demo1.demo.repository.user.IOrderRepository;
import com.example.demo1.demo.repository.user.OrderRepository;

import java.sql.SQLException;

public class OrderService implements IOrderService {
    IOrderRepository orderRepository = new OrderRepository();

    @Override
    public boolean addOrder(int userId) throws SQLException {
        return orderRepository.addOrder(userId);
    }
}
