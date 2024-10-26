package com.food.foodweb.controller;

import com.food.foodweb.model.Comment;
import com.food.foodweb.model.Food;
import com.food.foodweb.model.OrderedFood;
import com.food.foodweb.service.FoodInfoService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class FoodInfoController {
    public FoodInfoService foodinfoService;

    @Autowired
    public void setFoodInfoService(FoodInfoService foodinfoService) {
        this.foodinfoService = foodinfoService;
    }

    @GetMapping("/findinfo")
    public String findFoodinfoByName(String name, Model model) {
        Food food = foodinfoService.findFoodByName(name);
        model.addAttribute("food", food);
        return "make";
    }


    @GetMapping("/Collect")
    public String insertFoodByName(String userName, String foodName, String date, Model model, HttpSession session) {
        OrderedFood orderedFood = foodinfoService.findCollectInfoByFoodName(foodName);
        if (orderedFood != null) {
            model.addAttribute("msg", "该美食已收藏！");
        } else {
            boolean ret = foodinfoService.insertFoodByName(userName, foodName, date);
            if (ret) {
                model.addAttribute("msg", "收藏成功！");
            } else {
                model.addAttribute("msg", "收藏失败！");
            }
        }
        Food food = foodinfoService.findFoodByName(foodName);
        session.setAttribute("food", food);
        return "make";
    }

    @GetMapping("/CollectInfo")
    public String findCollectInfoByName(String name, Model model) {
        List<OrderedFood> orderedFoods = foodinfoService.findCollectInfoByName(name);
        model.addAttribute("orderedFoods", orderedFoods);
        return "collect";
    }

    @GetMapping("/collectDel")
    public String del(String food_name, String user_name, Model model) {
        boolean ret = foodinfoService.delCollect(food_name, user_name);
        List<OrderedFood> orderedFoods = foodinfoService.findCollectInfoByName(user_name);
        model.addAttribute("orderedFoods", orderedFoods);
        return "collect";
    }

    @GetMapping("/Comment")
    public String Comment(String name,Model model) {
        List<Comment> comments=foodinfoService.findAllComments();
        model.addAttribute("comments",comments);
        return "comment";
    }

    @GetMapping("/insertComment")
    public String insertComment(String name,String comment,String date,Model model) {
        boolean ret=foodinfoService.insertComment(name,comment,date);
        List<Comment> comments=foodinfoService.findAllComments();
        model.addAttribute("comments",comments);
        return "comment";
    }

    @GetMapping("/foodculture")
    public String findAll(Model model, @RequestParam(required = false, defaultValue = "1") int pageNum, @RequestParam(required = false, defaultValue = "8") int pageSize)
    {
       PageInfo<Food> cultureInfo = foodinfoService.findAllinfo(pageNum, pageSize);
        model.addAttribute("cultureInfo", cultureInfo);
        return "foodculture";
    }

    @GetMapping("/CommentManageSy")
    public String CommentManageSy(Model model) {
        List<Comment> comments=foodinfoService.findAllComments();
        model.addAttribute("comments",comments);
        return "commentmanagesy";
    }

    @GetMapping("/commentDel")
    public String CommentManageSy(String comment) {
        boolean ret=foodinfoService.commentDel(comment);
        return "redirect:CommentManageSy";
    }
}
