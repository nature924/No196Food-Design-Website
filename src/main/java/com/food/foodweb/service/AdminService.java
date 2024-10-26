package com.food.foodweb.service;

import com.food.foodweb.model.Admin;
import com.food.foodweb.model.User;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author meiko
 */
@Transactional
public interface AdminService {
    Admin findAdmin(Admin admin);
}
