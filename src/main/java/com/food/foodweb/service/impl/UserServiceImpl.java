package com.food.foodweb.service.impl;

import com.food.foodweb.mapper.FoodMapper;
import com.food.foodweb.mapper.UserMapper;
import com.food.foodweb.model.User;
import com.food.foodweb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author meiko
 */
@Service
public class UserServiceImpl implements UserService {
    public UserMapper userMapper;

    @Autowired
    public void setUserDao(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public User findUser(User user) {
        return userMapper.find(user);
    }

    @Override
    public boolean addUser(User user) {
        return userMapper.addUser(user);
    }

    @Override
    public boolean updateuser(User user) {
        return userMapper.updateuser(user);
    }

    @Override
    public User findUserByName(String username) {
        return userMapper.findbyname(username);
    }

    @Override
    public List<User> findAllUser() {
        return userMapper.findAllUser();
    }

    @Override
    public boolean delUserByName(String name) {
        return userMapper.delUserByName(name);
    }
}
