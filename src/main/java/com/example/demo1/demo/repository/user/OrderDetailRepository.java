package com.example.demo1.demo.repository.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class OrderDetailRepository implements IOrderDetailRepository {
    private static final String INSERT_ORDER_DETAIL = "INSERT INTO OrderDetails (order_id, product_id, quantity) VALUES (?, ?, ?)";
BaseRepository baseRepository = new BaseRepository();
    @Override
    public void addOrderDetail(int orderId, int productId, int quantity) throws SQLException {
        try(Connection connection = baseRepository.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(INSERT_ORDER_DETAIL)) {
            preparedStatement.setInt(1, orderId);
            preparedStatement.setInt(2, productId);
            preparedStatement.setInt(3, quantity);
            preparedStatement.executeUpdate();
        }
    }

    @Override
    public void updateOrderDetail(int orderDetailId, int quantity) throws SQLException {

    }
}
