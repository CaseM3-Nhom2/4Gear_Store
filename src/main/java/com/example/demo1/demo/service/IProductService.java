package com.example.demo1.demo.service;

import com.example.demo1.demo.model.Product;

import java.util.List;

public interface IProductService {
    List<Product> findAll(String sql);
    Product getProductByName(String name);
}
