package com.example.demo1.demo.model;

public class Product {
    private int id;
    private String name;
    private String description;
    private String brand;
    private double price;
    private int stock;
    private String image;

    public Product(int id, String name, String description, String brand, double price, int stock, String image) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.brand = brand;
        this.price = price;
        this.stock = stock;
        this.image = image;
    }

    public Product(String name, String description, String brand, double price, int stock, String image) {
        this.name = name;
        this.description = description;
        this.brand = brand;
        this.price = price;
        this.stock = stock;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
