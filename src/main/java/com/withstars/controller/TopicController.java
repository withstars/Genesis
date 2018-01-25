package com.withstars.controller;

import com.withstars.domain.Reply;
import com.withstars.domain.Topic;
import com.withstars.domain.User;
import com.withstars.service.impl.ReplyServiceImpl;
import com.withstars.service.impl.TopicServiceImpl;
import com.withstars.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;


import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

@Controller
public class TopicController {

    @Autowired
    public TopicServiceImpl topicService;
    @Autowired
    public ReplyServiceImpl replyService;
    @Autowired
    public UserServiceImpl userService;
    //log4j对象
    private final Log log = LogFactory.getLog(getClass());
    //渲染首页
    @RequestMapping("/")
    public ModelAndView toMain(){
        ModelAndView indexPage=new ModelAndView("cate");
        //全部主题
        List<Topic> topics=topicService.getAllTopics();
        //获取统计信息
        int topicsNum=topicService.getTopicsNum();
        int usersNum=userService.getUserCount();

        indexPage.addObject("topics",topics);
        indexPage.addObject("topicsNum",topicsNum);
        indexPage.addObject("usersNum",usersNum);
        return  indexPage;
    }

    //渲染指定主题页面
    @RequestMapping("/t")
    public ModelAndView toTopic(HttpServletRequest request, RedirectAttributes redirect){
        //获取主题id
        String id=request.getParameter("id");
        Integer tid=Integer.parseInt(id);
        //点击量加一
        boolean ifSucc=topicService.clickAddOne(tid);
        //获取主题信息
        Topic topic=topicService.selectById(tid);
        //获取主题全部评论
        List<Reply> replies=replyService.getRepliesOfTopic(tid);
        //获取评论数
        int repliesNum=replyService.repliesNum(tid);
        //获取统计信息
        int topicsNum=topicService.getTopicsNum();
        int usersNum=userService.getUserCount();
        //渲染视图
        ModelAndView topicPage=new ModelAndView("detail");
        topicPage.addObject("topic",topic);
        topicPage.addObject("replies",replies);
        topicPage.addObject("repliesNum",repliesNum);
        topicPage.addObject("topicsNum",topicsNum);
        topicPage.addObject("usersNum",usersNum);
        return topicPage;
    }

    //发表主题
    @RequestMapping("/topic/add")
    public ModelAndView addTopic(HttpServletRequest request, RedirectAttributes redirect){
        ModelAndView indexPage;
        //未登陆
        if(request.getSession().getAttribute("user")==null){
            indexPage=new ModelAndView("redirect:/signin");
            return  indexPage;
        }
        //处理参数
        User user=(User)request.getSession().getAttribute("user");
        Integer userId=user.getId();

        String title=request.getParameter("title");
        String content=request.getParameter("content");
        Byte tabId=Byte.parseByte(request.getParameter("tab"));
        //新建Topic
        Topic topic=new Topic();
        topic.setUserId(userId);
        topic.setTitle(title);
        topic.setContent(content);
        topic.setTabId(tabId);
        topic.setCreateTime(new Date());
        topic.setUpdateTime(new Date());
        //添加topic
        boolean ifSucc=topicService.addTopic(topic);
        if (ifSucc){
            if (log.isInfoEnabled()){
                log.info("添加主题成功!");
            }
        }
        indexPage=new ModelAndView("redirect:/");

        return  indexPage;
    }

}
