package com.food.foodweb.controller;

import com.food.foodweb.model.Admin;
import com.food.foodweb.model.Food;
import com.food.foodweb.model.User;
import com.food.foodweb.service.AdminService;
import com.food.foodweb.service.FoodService;
import com.food.foodweb.service.UserService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

/**
 * @author meiko
 */
@Controller
public class AdminController {

    public AdminService adminService;

    @Autowired
    public void setAdminService(AdminService adminService) {
        this.adminService = adminService;
    }


    @GetMapping("/adminlogin")
    public String toLoginadmin() {
        return "adminlogin";
    }

    @PostMapping("/adminlogin")
    public String adminlogin(Admin admin, HttpSession session, Model model) {
        Admin r = adminService.findAdmin(admin);
        System.out.println(r);
        if (r != null) {
            session.setAttribute("admin", r);
            return "redirect:adminfoodlist";
        } else {
            model.addAttribute("msg","用户名或者密码错误");
            return "adminlogin";
        }
    }
    @GetMapping("/exitadmin")
    public String exitadmin(HttpSession session) {
        session.removeAttribute("admin");
        return "redirect:login";
    }

}
