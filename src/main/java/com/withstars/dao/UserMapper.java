package com.withstars.dao;

import com.withstars.domain.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    //用户注册
    int addUser(User user);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);


    User selectByUsername(String username);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    //多参数注解
    int addCredit(@Param("points") Integer points,@Param("id")Integer id);

    //查询username是否存在
    int existUsername(String username);

    //查询用户数
    int getUserCount();
}