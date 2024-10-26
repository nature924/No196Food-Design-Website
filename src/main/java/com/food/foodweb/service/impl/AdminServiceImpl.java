package com.food.foodweb.service.impl;
import com.food.foodweb.mapper.AdminMapper;
import com.food.foodweb.model.Admin;
import com.food.foodweb.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author meiko
 */
@Service
public class AdminServiceImpl implements AdminService {
    public AdminMapper adminMapper;

    @Autowired
    public void setAdminDao(AdminMapper adminMapper) {
        this.adminMapper = adminMapper;
    }

    @Override
    public Admin findAdmin(Admin admin) {
        return adminMapper.findadmin(admin);
    }
}
