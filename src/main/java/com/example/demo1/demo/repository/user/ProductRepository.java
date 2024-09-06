package com.example.demo1.demo.repository.user;

import com.example.demo1.demo.model.Product;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ProductRepository implements IProductRepository {
    private static final String INSERT_PRODUCT = "INSERT INTO Products(product_id,name,description,brand,stock,image) VALUES(?,?,?,?,?,?) ";
    private static final String SELECT_PRODUCT_BY_ID = "SELECT * FROM Products WHERE product_id = ?";
    private static final String SELECT_PRODUCT_BY_NAME = "SELECT * FROM Products WHERE name = ?";
    BaseRepository baseRepository = new BaseRepository();

    @Override
    public List<Product> findAll(String sql) {
        List<Product> products = new ArrayList<>();
        try (Connection conn = baseRepository.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("product_id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                String brand = rs.getString("brand");
                double price = rs.getDouble("price");
                int stock = rs.getInt("stock");
                String image = rs.getString("image");
                products.add(new Product(name, description, brand, price, stock, image));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return products;
    }

    @Override
    public Product getProductByName(String name) {
        Product product = null;
        try (Connection conn = baseRepository.getConnection();
             PreparedStatement ps = conn.prepareStatement(SELECT_PRODUCT_BY_NAME)) {
            ps.setString(1, name);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("product_id");
                String productName = rs.getString("name");
                String description = rs.getString("description");
                String brand = rs.getString("brand");
                double price = rs.getDouble("price");
                int stock = rs.getInt("stock");
                String image = rs.getString("image");
                product = new Product(productName, description, brand, price, stock, image);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return product;
    }

}
