package com.food.foodweb.mapper;

import com.food.foodweb.model.User;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @author meiko
 */
@Mapper
public interface UserMapper {

    @Select("SELECT * FROM tb_user WHERE username=#{username} and password=#{password}")
    User find(User user);

    @Insert("insert into tb_user values(#{username},#{password},#{sex},#{age},#{weight},#{height})")
    boolean addUser(User user);

    @Update("update tb_user set username=#{username},password=#{password},sex=#{sex},age=#{age},weight=#{weight},height=#{height} where username=#{username}")
    boolean updateuser(User user);

    @Select("select * from tb_user where username=#{username}")
    User findbyname(String username);

    @Select("select * from tb_user")
    List<User> findAllUser();

    @Delete("delete from tb_user where username=#{name}")
    boolean delUserByName(String name);
}
