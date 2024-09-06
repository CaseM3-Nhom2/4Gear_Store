package com.example.demo1.demo.repository.user;

import com.example.demo1.demo.model.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> findAll(String sql);
    Product getProductByName(String name);
}