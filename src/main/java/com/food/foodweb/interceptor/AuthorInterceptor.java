package com.food.foodweb.interceptor;

import com.food.foodweb.model.Admin;
import com.food.foodweb.model.User;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author meiko
 */
public class AuthorInterceptor extends HandlerInterceptorAdapter {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        if (request.getRequestURI().endsWith("/register") || request.getRequestURI().endsWith("/adminlogin") || request.getRequestURI().endsWith("/login") || request.getRequestURI().endsWith("/sy") || request.getRequestURI().endsWith(".css") || request.getRequestURI().endsWith(".js") || request.getRequestURI().endsWith(".png") || request.getRequestURI().endsWith(".jpg") || request.getRequestURI().endsWith(".gif")) {
            return true;
        }
        User user = (User) request.getSession().getAttribute("user");
        Admin admin = (Admin) request.getSession().getAttribute("admin");
        if (user == null) {
            if (admin == null) {
                response.sendRedirect("login");
                return false;
            } else {
                return true;
            }
        } else {
            return true;
        }
    }
}
