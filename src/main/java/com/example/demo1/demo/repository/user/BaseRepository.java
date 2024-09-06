package com.example.demo1.demo.repository.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BaseRepository {

    private static final String URL = "jdbc:mysql://localhost:3306/4gear_store";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "12345678";

    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    public Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }
}


