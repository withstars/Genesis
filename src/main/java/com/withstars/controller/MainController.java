package com.withstars.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;

@Controller
public class MainController {



    @RequestMapping(value = {"/signin"})
    public ModelAndView signin(){
        ModelAndView signinPage=new ModelAndView("signin");
        return  signinPage;
    }

    @RequestMapping("/signup")
    public ModelAndView signup(){
        ModelAndView SignupPage=new ModelAndView("signup");
        return  SignupPage;
    }
}
