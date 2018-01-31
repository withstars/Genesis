package com.withstars.service;

import com.withstars.domain.LoginLog;

public interface LoginLogService {


    /**
     * 插入一条登录日志
     */
    boolean addLog(LoginLog log);
}
