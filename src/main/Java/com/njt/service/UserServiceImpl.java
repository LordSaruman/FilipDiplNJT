package com.njt.service;

import com.njt.dao.UserDao;
import com.njt.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao dao;
    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public User findById(int id) {
        return dao.findById(id);
    }

    @Override
    public List<User> findAllUsers() {

        return dao.findAll();
    }

    @Override
    public User findByUsername(String name) {
        return dao.findUserByName(name);
    }

    @Override
    public void saveUser(User user) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        dao.persist(user);
    }

    @Override
    public void updateUser(User dbUser, User user) {
//        dbUser.setFirstName(user.getFirstName());
//        dbUser.setLastName(user.getLastName());
//        if (dbUser.getUserProfiles().iterator().next().getId().intValue() != user.getUserProfiles().iterator().next().getId().intValue()) {
//            dbUser.removeAllUserProfiles();
//            dbUser.addUserProfile(userProfileService.findById(user.getUserProfiles().iterator().next().getId()));
//        }

        dao.update(dbUser);
    }

    @Override
    public void deleteUserById(int id) {
        dao.deleteUserById(id);
    }

    @Override
    public boolean isUserExist(User user) {
        return findByUsername(user.getUsername()) != null;
    }

}
