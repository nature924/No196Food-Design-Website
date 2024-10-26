package com.food.foodweb.service.iml;

import com.food.foodweb.mapper.FoodInfoMapper;
import com.food.foodweb.model.Comment;
import com.food.foodweb.model.Food;
import com.food.foodweb.model.OrderedFood;
import com.food.foodweb.service.FoodInfoService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author meiko
 */
//@Service
public class FoodInfoServiceImpl implements FoodInfoService {

    public FoodInfoMapper foodinfoMapper;

    @Autowired
    public void setFoodInfoDao(FoodInfoMapper foodinfoMapper) {
        this.foodinfoMapper = foodinfoMapper;
    }

    @Override
    public Food findFoodByName(String name) {
        return foodinfoMapper.findfood(name);
    }

    @Override
    public boolean insertFoodByName(String userName, String foodName, String date) {
        return foodinfoMapper.insertFoodByName(userName,foodName,date);
    }

    @Override
    public List<OrderedFood> findCollectInfoByName(String name) {
        return foodinfoMapper.findCollectInfoByName(name);
    }

    @Override
    public OrderedFood findCollectInfoByFoodName(String foodName) {
        return foodinfoMapper.findCollectInfoByFoodName(foodName);
    }

    @Override
    public boolean delCollect(String food_name, String user_name) {
        return foodinfoMapper.delcollect(food_name,user_name);
    }


    @Override
    public List<Comment> findAllComments() {
        return foodinfoMapper.findAllComments();
    }

    @Override
    public boolean insertComment(String name, String comment, String date) {
        return foodinfoMapper.insertComment(name,comment,date);
    }

    @Override
    public PageInfo<Food> findAllinfo(int pageNum,int pageSize) {
        PageHelper.offsetPage((pageNum-1)*pageSize+1-1,pageSize);
        List<Food> l=foodinfoMapper.findAllinfo();
        PageInfo<Food> pageInfo=new PageInfo<>(l);
        System.out.println(pageInfo);
        return pageInfo;
    }

    @Override
    public boolean commentDel(String comment) {
        return foodinfoMapper.commentDel(comment);
    }

}
