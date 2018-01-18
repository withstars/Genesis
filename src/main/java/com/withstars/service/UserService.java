package com.withstars.service;

import com.withstars.domain.User;

public interface UserService {

    public boolean addUser(User user);

    public boolean login(String username,String password);
}
