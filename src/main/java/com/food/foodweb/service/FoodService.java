package com.food.foodweb.service;

import com.food.foodweb.model.Food;
import com.github.pagehelper.PageInfo;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author meiko
 */
@Transactional
public interface FoodService {

    @Transactional(readOnly = true)
    Food findFoodByName(String name);

    @Transactional(readOnly = true)
    PageInfo<Food> findAllFoods(int pageNum,int pageSize);

    boolean add(Food food);

    boolean delfood(String name);

    boolean updateFood(Food food);

    boolean updateinfo(Food food);

    List<Food> vagueFindByName(String name);
}
