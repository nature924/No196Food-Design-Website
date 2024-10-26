package com.food.foodweb.controller;

import com.food.foodweb.model.Food;
import com.food.foodweb.model.User;
import com.food.foodweb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author meiko
 */
@Controller
public class UserController {
    public UserService userService;

    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }


    @GetMapping("/login")
    public String toLogin() {
        return "login";
    }

    @GetMapping("/usersy")
    public String toUsersy() {
        return "usersy";
    }

    @PostMapping("/login")
    public String login(User user, HttpSession session, Model model) {
        User ret = userService.findUser(user);
        if (ret != null) {
            session.setAttribute("user", ret);
            model.addAttribute("msg", "登入成功！开启美食冲浪！");
            return "usersy";
        } else {
            model.addAttribute("msg", "用户名或者密码错误");
            return "login";
        }
    }

    @GetMapping("/exit")
    public String exit(HttpSession session) {
        session.removeAttribute("user");
        return "redirect:login";
    }

    @GetMapping("/register")
    public String toRegister() {
        return "register";
    }

    @PostMapping("/register")
    public String toRegister(User user, Model model) {
        boolean ret = userService.addUser(user);
        if (ret) {
            model.addAttribute("msg", "注册成功！请使用账号登录！");
            return "sy";
        } else {
            model.addAttribute("msg", "注册失败！");
            return "sy";
        }
    }

    @GetMapping("/edituser")
    public String toEdit(String username, Model model) {
        User user = userService.findUserByName(username);
        model.addAttribute("u", user);
        return "usercenter";
    }

    @PostMapping("/edituser")
    public String doEdit(User user, Model model) {
        boolean ret = userService.updateuser(user);
        System.out.println(ret);
        if (ret) {
            return "redirect:usersy";
        } else {
            return "usercenter";
        }
    }

    @GetMapping("/UserManageSy")
    public String CommentManageSy(Model model) {
        List<User> users = userService.findAllUser();
        model.addAttribute("users", users);
        return "usermanagesy";
    }

    @GetMapping("/userDel")
    public String userDel(String name) {
        boolean ret = userService.delUserByName(name);
        return "redirect:UserManageSy";
    }

    @GetMapping("/userEditByManager")
    public String userEdit(String username, Model model) {
        User user = userService.findUserByName(username);
        model.addAttribute("userE", user);
        return "useredit";
    }

    @PostMapping("/userEditByManager")
    public String doUserEdit(User user) {
        boolean ret = userService.updateuser(user);
        if (ret) {
            return "redirect:UserManageSy";
        } else {
            return "useredit";
        }
    }
}