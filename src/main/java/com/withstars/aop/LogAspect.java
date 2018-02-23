package com.withstars.aop;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: withstars
 * Date: 2018-02-22
 * Time: 20:41
 * Mail: withstars@126.com
 */
@Component
@Aspect
public class LogAspect {
     private final Log log = LogFactory.getLog(getClass());

    @Before("execution(* com.withstars.controller.UserController.signin(..))")
    public void loginLogAspect(JoinPoint joinPoint){
        String methodName=joinPoint.getSignature().toShortString();
        String args=joinPoint.getArgs().toString();
        log.info("---Before method "+methodName+" invoke, param:" +args+"---");
    }

}
