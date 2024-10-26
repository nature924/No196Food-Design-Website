package com.food.foodweb.mapper;

import com.food.foodweb.model.Admin;
import com.food.foodweb.model.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface AdminMapper {

    @Select("SELECT * FROM tb_admin WHERE adminname=#{adminname} and adminpassword=#{adminpassword}")
    Admin findadmin(Admin admin) ;
}
