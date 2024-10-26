package com.food.foodweb.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = "com.food.foodweb")
@MapperScan("com.food.foodweb.mapper")
public class AppConfig {
}
