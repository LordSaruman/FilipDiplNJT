package com.njt.service;

import com.njt.model.User;

import java.util.List;

public interface UserService {

    User findById(int id);

    List<User> findAllUsers();

    User findByUsername(String username);

    void saveUser(User user);

    void updateUser(User dbUser, User user);

    void deleteUserById(int id);

    public boolean isUserExist(User user);
}
