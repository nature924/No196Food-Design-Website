package com.food.foodweb.controller;

import com.food.foodweb.model.Food;
import com.food.foodweb.service.FoodService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @author meiko
 */
@Controller
public class FoodController {

    public FoodService foodService;

    @Autowired
    public void setFoodService(FoodService foodService) {
        this.foodService = foodService;
    }

    @GetMapping("/sy")
    public String tosy() {
        return "sy";
    }

    @GetMapping("/foodlist")
    public String findAll(Model model, @RequestParam(required = false, defaultValue = "1") int pageNum, @RequestParam(required = false, defaultValue = "8") int pageSize) {
        PageInfo<Food> pageInfo = foodService.findAllFoods(pageNum, pageSize);
        System.out.println("pageInfo = " + pageInfo);
        model.addAttribute("pageInfo", pageInfo);
        return "foodlist";
    }

    @GetMapping("/adminfoodlist")
    public String adminfindAll(Model model, @RequestParam(required = false, defaultValue = "1") int pageNum, @RequestParam(required = false, defaultValue = "8") int pageSize) {
        PageInfo<Food> a = foodService.findAllFoods(pageNum, pageSize);
        model.addAttribute("pageInfo", a);
        return "adminsy";
    }

    @GetMapping("/find")
    public String findFoodByName(String name, Model model) {
        List<Food> food = foodService.vagueFindByName(name);
        model.addAttribute("food", food);
        return "findlist";
    }

    @GetMapping("add")
    public String toadd() {
        return "add";
    }

    @PostMapping("add")
    public String add(Food food) {
        boolean ret = foodService.add(food);
        if (ret) {
            return "redirect:adminfoodlist";

        } else {
            return "add";
        }
    }

    @GetMapping("/foodDel")
    public String del(String name) {
        boolean ret = foodService.delfood(name);
        return "redirect:adminfoodlist";
    }

    @GetMapping("/edit")
    public String toEdit(String name, Model model) {
        Food food = foodService.findFoodByName(name);
        System.out.println(food);
        model.addAttribute("f", food);
        return "edit";
    }

    @PostMapping("/edit")
    public String doEdit(Food food) {
        boolean ret = foodService.updateFood(food);
        System.out.println(ret);
        if (ret) {
            return "redirect:adminfoodlist";
        } else {
            return "edit";
        }
    }

    @GetMapping("/editinfo")
    public String toinfoEdit(String name, Model model) {
        Food food = foodService.findFoodByName(name);
        System.out.println(food);
        model.addAttribute("f", food);
        return "infoedit";
    }

    @PostMapping("/editinfo")
    public String doinfoEdit(Food food) {
        boolean ret = foodService.updateinfo(food);
        System.out.println(ret);
        if (ret) {
            return "redirect:foodinfolist";
        } else {
            return "editinfo";
        }
    }

    @GetMapping("/foodinfolist")
    public String cultureAll(Model model, @RequestParam(required = false, defaultValue = "1") int pageNum, @RequestParam(required = false, defaultValue = "8") int pageSize) {
        PageInfo<Food> info = foodService.findAllFoods(pageNum, pageSize);
        model.addAttribute("pageInfo", info);
        return "foodinfolist";
    }
}
