package com.example.demo1.demo.controller;


import com.example.demo1.demo.service.IOrderDetailService;
import com.example.demo1.demo.service.OrderDetailService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "OrderDetailServlet", value = "/order")
public class OrderDetailServlet extends HttpServlet {
    IOrderDetailService orderDetailService = new OrderDetailService();
              protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                  String action = request.getParameter("action");
                  if (action==null ) {
                      action="";
                  }
                  switch (action) {
                      case "add":
                          try {
                              addToOrderDetail(request, response);
                          } catch (SQLException e) {
                              throw new RuntimeException(e);
                          }
                          break;
                      default:
                          break;
                  }

              }
              private void addToOrderDetail(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
                  int orderId = Integer.parseInt(request.getParameter("orderId"));
                  int productId = Integer.parseInt(request.getParameter("productId"));
                  int quantity = Integer.parseInt(request.getParameter("quantity"));
                  orderDetailService.addOrderDetail(orderId, productId, quantity);
              }

}
