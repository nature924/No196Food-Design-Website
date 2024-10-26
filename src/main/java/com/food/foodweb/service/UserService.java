package com.food.foodweb.service;

import com.food.foodweb.model.User;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public interface UserService {
    User findUser(User user);

    boolean addUser(User user);

    boolean updateuser(User user);

    User findUserByName(String username);

    List<User> findAllUser();

    boolean delUserByName(String name);
}
