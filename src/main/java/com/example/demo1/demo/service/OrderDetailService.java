package com.example.demo1.demo.service;



import com.example.demo1.demo.repository.user.IOrderDetailRepository;
import com.example.demo1.demo.repository.user.OrderDetailRepository;

import java.sql.SQLException;

public class OrderDetailService implements IOrderDetailService {
    IOrderDetailRepository orderDetailRepository = new OrderDetailRepository();

    @Override
    public void addOrderDetail(int orderId, int productId, int quantity) throws SQLException {
        orderDetailRepository.addOrderDetail(orderId, productId, quantity);
    }
}
