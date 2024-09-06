package com.example.demo1.demo.service;

import com.example.demo1.demo.model.User;
import com.example.demo1.demo.repository.user.IUserRepository;
import com.example.demo1.demo.repository.user.UserRepository;

import java.sql.SQLException;
import java.util.List;

public class UserService implements IUserService {
    IUserRepository userRepository = new UserRepository();

    @Override
    public boolean insertUser(User user) throws SQLException {
        return userRepository.insertUser(user);
    }

    @Override
    public User selectUser(int id) {
        return null;
    }


    @Override
    public boolean updateUser(User user) throws SQLException {
        return userRepository.updateUser(user);
    }

    @Override
    public User authenticateUser(String account, String password) throws SQLException {
        return userRepository.authenticateUser(account, password);
    }

    @Override
    public List<User> getAllUsers() throws SQLException {
        return userRepository.getAllUsers();
    }

    @Override
    public boolean changePassword(String pass,User user) throws SQLException {
        return userRepository.changePassword(pass,user);
    }
}