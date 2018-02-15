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

    //用户注册
    public boolean addUser(User user) {
        return userDao.addUser(user)>0;
    }

    //登录验证 0:用户名不存在 1:密码错误 2:验证成功
    public int login(String username,String password) {
        //判断username是否存在
        boolean existUsername=existUsername(username);
        //若username存在，验证密码
        if (existUsername){
            User resUser=userDao.selectByUsername(username);
            if (resUser.getPassword().equals(password)){
                return 2;
            }
            return 1;
        }
        return 0;
    }

    //登陆后获取用户信息
    public User getUserByUsername(String username){
        User resUser=userDao.selectByUsername(username);
        return resUser;
    }

    //增加积分
    public boolean addCredit(Integer points,Integer id) {
        return userDao.addCredit(points,id)>0;
    }

    //username是否存在
    public boolean existUsername(String username) {
        return userDao.existUsername(username)==1;
    }

    public int getUserCount() {
        return userDao.getUserCount();
    }

    public User getUserById(Integer id) {
        return userDao.selectByPrimaryKey(id);
    }

    public boolean updateUser(User user) {
        return userDao.updateByPrimaryKeySelective(user)>0;
    }
}
