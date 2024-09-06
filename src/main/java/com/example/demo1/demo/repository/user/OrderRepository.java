package com.example.demo1.demo.repository.user;


import com.example.demo1.demo.model.Order;
import com.example.demo1.demo.model.OrderDetail;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class OrderRepository implements IOrderRepository {
    private static final String INSERT_ORDER_SQL = "INSERT INTO Orders (user_id, status) VALUES (?, 'normal')";
    private static final String DELETE_ORDER_SQL = "DELETE FROM Orders WHERE id = ?";
    private static final String SELECT_ORDER_SQL = "SELECT * FROM Orders WHERE id = ?";
    private static final String UPDATE_ORDER_SQL = "UPDATE Orders SET status = ? WHERE order_id = ?";
    private static final String SELECT_ORDER_BY_USER = "SELECT * FROM Orders WHERE user_id = ?";
    private static final String SELECT_ORDER_DETAIL = "SELECT od.order_detail_id, p.name AS product_name, od.quantity, p.price " +
            "FROM OrderDetails od " +
            "JOIN Products p ON od.product_id = p.product_id " +
            "WHERE od.order_id = ?";
    private static final String TOTAL_PRICE = "SELECT SUM(p.price * od.quantity) AS total " +
            "FROM OrderDetails od " +
            "JOIN Products p ON od.product_id = p.product_id " +
            "WHERE od.order_id = ?";
    BaseRepository baseRepository = new BaseRepository();

    @Override
    public boolean addOrder(int userId) throws SQLException {
        try (Connection conn = baseRepository.getConnection();
             PreparedStatement ps = conn.prepareStatement(INSERT_ORDER_SQL)) {
            ps.setInt(1, userId);
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;

        } catch (SQLException e) {
            throw new SQLException(e.getMessage());
        }
    }

    @Override
    public void updateOrderStatus(int orderId, String status) throws SQLException {
        try (Connection conn = baseRepository.getConnection();
             PreparedStatement ps = conn.prepareStatement(UPDATE_ORDER_SQL)) {
            ps.setString(1, status);
            ps.setInt(2, orderId);
            ps.executeUpdate();
        }
    }

    @Override
    public void deleteOrder(int orderId) throws SQLException {
        try (Connection conn = baseRepository.getConnection();
             PreparedStatement ps = conn.prepareStatement(DELETE_ORDER_SQL)) {
            ps.setInt(1, orderId);
            ps.executeUpdate();
        }
    }

    @Override
    public Order getOrder(int orderId) throws SQLException {
        Order order = null;
        try (Connection conn = baseRepository.getConnection();
             PreparedStatement ps = conn.prepareStatement(SELECT_ORDER_SQL)) {
            ps.setInt(1, orderId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    int userId = rs.getInt("user_id");
                    Timestamp orderDate = rs.getTimestamp("order_date");
                    String status = rs.getString("status");

                    order = new Order(orderId, userId, orderDate, status);
                }
            }
        }
        return order;
    }

    @Override
    public List<Order> getOrdersByUserId(int userId) throws SQLException {
        List<Order> orders = new ArrayList<>();
        try (Connection conn = baseRepository.getConnection();
             PreparedStatement ps = conn.prepareStatement(SELECT_ORDER_BY_USER)) {
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                int orderId = rs.getInt("order_id");
                Timestamp orderDate = rs.getTimestamp("order_date");
                String status = rs.getString("status");
                orders.add(new Order(orderId, userId, orderDate, status));

            }
        }
        return orders;
    }

    @Override
    public List<OrderDetail> getOrderDetails(int orderId) throws SQLException {
        return Collections.emptyList();
    }

    @Override
    public double getOrderTotal(int orderId) throws SQLException {
        return 0;
    }
}
