package com.food.foodweb.service;

import com.food.foodweb.model.Comment;
import com.food.foodweb.model.Food;
import com.food.foodweb.model.OrderedFood;
import com.github.pagehelper.PageInfo;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author meiko
 */
@Transactional
public interface FoodInfoService {
    @Transactional(readOnly = true)
    Food findFoodByName(String name);

    boolean insertFoodByName(String userName, String foodName, String date);

    @Transactional(readOnly = true)
    List<OrderedFood> findCollectInfoByName(String name);

    @Transactional(readOnly = true)
    OrderedFood findCollectInfoByFoodName(String foodName);

    boolean delCollect(String food_name,String user_name);

    boolean insertComment(String name, String comment, String date);

    PageInfo<Food> findAllinfo(int pageNum, int pageSize);

    boolean commentDel(String comment);

    List<Comment> findAllComments();
}
