package com.withstars.controller;

import com.withstars.domain.Tab;
import com.withstars.service.impl.ReplyServiceImpl;
import com.withstars.service.impl.TabServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import java.util.List;

@Controller
public class MainController {


    @Autowired
    public TabServiceImpl tabService;
    @Autowired
    public ReplyServiceImpl replyService;

    //进入登录页面
    @RequestMapping(value = {"/signin"})
    public ModelAndView signin(){
        ModelAndView signinPage=new ModelAndView("signin");
        return  signinPage;
    }
    //进入注册页面
    @RequestMapping("/signup")
    public ModelAndView signup(){
        ModelAndView SignupPage=new ModelAndView("signup");
        return  SignupPage;
    }

    //进入新建主题页面
    @RequestMapping(value = {"/new"})
    public ModelAndView newTopic(){
        ModelAndView newTopicPage=new ModelAndView("new");
        List<Tab> tabs=tabService.getAllTabs();
        newTopicPage.addObject("tabs",tabs);
        return  newTopicPage;
    }
}
