package com.food.foodweb.mapper;

import com.food.foodweb.model.Comment;
import com.food.foodweb.model.Food;
import com.food.foodweb.model.OrderedFood;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author meiko
 */
@Mapper
public interface FoodInfoMapper {

    @Select("select*from tb_food where name=#{name}")
    Food findfood(String name);
    @Select("select*from tb_food where name=#{name}")
    Food findFoodByName(String name);
    
    @Insert("insert into tb_orderedfood values(#{userName},#{foodName},#{date})")
    boolean insertFoodByName(String userName, String foodName, String date);

    @Select("select * from tb_orderedfood where user_name=#{name}")
    List<OrderedFood> findCollectInfoByName(String name);

    @Select("select * from tb_orderedfood where food_name=#{foodName}")
    OrderedFood findCollectInfoByFoodName(String foodName);

    @Delete("delete from tb_orderedfood where food_name=#{food_name} and user_name=#{user_name}")
    boolean delcollect(String food_name, String user_name);

    @Select("select * from tb_food")
    List<Food> findAllinfo();

    @Select("select*from tb_comment where username=#{name}")
    List<Comment> findAllCommentsByName(String name);

    @Insert("insert into tb_comment values(#{name},#{comment},#{date})")
    boolean insertComment(String name, String comment, String date);

    @Delete("delete from tb_comment where comment=#{comment}")
    boolean commentDel(String comment);

    @Select("select*from tb_comment")
    List<Comment> findAllComments();
}
