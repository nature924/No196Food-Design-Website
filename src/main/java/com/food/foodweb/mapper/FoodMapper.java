package com.food.foodweb.mapper;

import com.food.foodweb.model.Food;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @author meiko
 */
@Mapper
public interface FoodMapper {

    @Select("select * from tb_food where name=#{name}")
    Food findByName(String name);

    @Select("select * from tb_food where name like concat(\"%\",#{name},\"%\")")
    List<Food>vagueFindByName(String name);

    @Select("select*from tb_food")
    List<Food> findAll();

    @Insert("insert into tb_food values(#{name},#{img},#{time},#{type},#{pop},#{way},#{culture},#{step})")
    boolean add(Food food);

    @Delete("delete from tb_food where name=#{name}")
    boolean del(String name);

    @Update("update tb_food set name=#{name},img=#{img},time=#{time},type=#{type},pop=#{pop},way=#{way} where name=#{name}")
    boolean edit(Food food);

    @Update("update tb_food set name=#{name},img=#{img},culture=#{culture},step=#{step} where name=#{name}")
    boolean editinfo(Food food);
}
