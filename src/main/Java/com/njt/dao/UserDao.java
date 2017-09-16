package com.njt.dao;

import com.njt.model.User;

import java.util.List;

public interface UserDao {

    User findById(Integer id);

    void persist(User user);

    void update(User user);

    void deleteUserById(int id);

    List<User> findAll();

    User findUserByName(String name);
}
