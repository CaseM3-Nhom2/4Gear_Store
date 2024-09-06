package com.example.demo1.demo.service;



import com.example.demo1.demo.model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserService {
    public boolean insertUser(User user) throws SQLException;
    public User selectUser(int id);
    public boolean updateUser(User user) throws SQLException;
    User authenticateUser(String account, String password) throws SQLException;
    List<User> getAllUsers() throws SQLException;
    boolean changePassword(String pass,User user) throws SQLException;
}
