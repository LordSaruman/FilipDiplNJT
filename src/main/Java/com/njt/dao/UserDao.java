package com.njt.dao;

import com.njt.model.User;

import java.util.List;

public interface UserDao {

    User findById(int id);

    void saveUser(User user);

    void update(User user);

    void deleteUserById(int id);

    List<User> findAllUsers();

    User findUserByName(String name);
}
