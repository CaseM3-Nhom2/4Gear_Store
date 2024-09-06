package com.example.demo1.demo.service;

import java.sql.SQLException;

public interface IOrderService {
    boolean addOrder(int userId) throws SQLException;
}
