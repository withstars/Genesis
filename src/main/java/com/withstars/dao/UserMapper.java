package com.withstars.dao;

import com.withstars.domain.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int addUser(User user);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    User selectByUsername(String username);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}