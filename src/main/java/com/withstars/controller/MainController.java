package com.withstars.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

    @RequestMapping("/")
    public ModelAndView toIndex(){
        ModelAndView toIndex=new ModelAndView("login");
        return  toIndex;
    }
}
