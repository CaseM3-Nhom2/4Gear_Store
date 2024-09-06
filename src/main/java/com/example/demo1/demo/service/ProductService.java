package com.example.demo1.demo.service;

import com.example.demo1.demo.model.Product;
import com.example.demo1.demo.repository.user.IProductRepository;
import com.example.demo1.demo.repository.user.ProductRepository;

import java.util.Collections;
import java.util.List;

public class ProductService implements IProductService {
    IProductRepository productRepository = new ProductRepository();

    @Override
    public List<Product> findAll(String sql) {
        return productRepository.findAll(sql);
    }

    @Override
    public Product getProductByName(String name) {
        return productRepository.getProductByName(name);
    }


}
