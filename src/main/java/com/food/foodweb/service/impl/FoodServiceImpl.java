package com.food.foodweb.service.impl;

import com.food.foodweb.mapper.FoodMapper;
import com.food.foodweb.model.Food;
import com.food.foodweb.service.FoodService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author meiko
 */
@Service

public class FoodServiceImpl implements FoodService {
    public FoodMapper foodMapper;

    @Autowired
    public void setFoodDao(FoodMapper foodMapper) {
        this.foodMapper = foodMapper;
    }


    @Override
    public Food findFoodByName(String name) {
        return foodMapper.findByName(name);
    }

    @Override
    public PageInfo<Food> findAllFoods(int pageNum,int pageSize) {
        PageHelper.offsetPage((pageNum-1)*pageSize+1-1,pageSize);
        List<Food> ls=foodMapper.findAll();
        PageInfo<Food> pageInfo=new PageInfo<>(ls);
        System.out.println(pageInfo);
        return pageInfo;
    }

    @Override
    public boolean add(Food food) {
        return foodMapper.add(food);
    }

    @Override
    public boolean delfood(String name) {
        return foodMapper.del(name);
    }

    @Override
    public boolean updateFood(Food food) {
        return foodMapper.edit(food);
    }

    @Override
    public boolean updateinfo(Food food) {
        return foodMapper.editinfo(food);
    }

    @Override
    public List<Food> vagueFindByName(String name) {
        return foodMapper.vagueFindByName(name);
    }
}
