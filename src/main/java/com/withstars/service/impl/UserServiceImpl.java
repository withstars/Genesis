package com.withstars.service.impl;

import com.withstars.dao.UserMapper;
import com.withstars.domain.User;
import com.withstars.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    public UserMapper userDao;

    public boolean addUser(User user) {
        return userDao.addUser(user)>0;
    }

    //判断登陆用户名密码
    public boolean login(String username,String password) {

        User resUser=userDao.selectByUsername(username);
        if (resUser.getPassword().equals(password)){
            return true;
        }
        return false;
    }
    //登陆后得到用户ID
    public String getUserId(String username){
        User resUser=userDao.selectByUsername(username);
        String uId=""+resUser.getId();
        return uId;
    }

}
