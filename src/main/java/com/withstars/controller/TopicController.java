package com.withstars.controller;

import com.withstars.domain.Topic;
import com.withstars.service.impl.TopicServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class TopicController {

    @Autowired
    public TopicServiceImpl topicService;

    //渲染首页
    @RequestMapping("/")
    public ModelAndView toMain(){
        ModelAndView indexPage=new ModelAndView("cate");

        List<Topic> topics=topicService.getAllTopics();
        indexPage.addObject("topics",topics);
        return  indexPage;
    }

    //渲染指定主题页面
    @RequestMapping("/t")
    public ModelAndView toTopic(HttpServletRequest request, RedirectAttributes redirect){
        String id=request.getParameter("id");
        Integer tid=Integer.parseInt(id);
        Topic topic=topicService.selectById(tid);

        ModelAndView topicPage=new ModelAndView("detail");
        topicPage.addObject("topic",topic);
        return topicPage;
    }


}
