package com.withstars.controller;

import com.withstars.domain.Reply;
import com.withstars.domain.Tab;
import com.withstars.domain.Topic;
import com.withstars.domain.User;
import com.withstars.service.impl.ReplyServiceImpl;
import com.withstars.service.impl.TabServiceImpl;
import com.withstars.service.impl.TopicServiceImpl;
import com.withstars.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;


import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * 主题相关控制类
 */
@Controller
public class TopicController {

    @Autowired
    public TopicServiceImpl topicService;
    @Autowired
    public ReplyServiceImpl replyService;
    @Autowired
    public UserServiceImpl userService;
    @Autowired
    public TabServiceImpl tabService;

    //log4j对象
    private final Log log = LogFactory.getLog(getClass());

    /**
     * 渲染首页
     * @param session
     * @return
     */
    @RequestMapping("/")
    public ModelAndView toMain(HttpSession session){
        ModelAndView indexPage=new ModelAndView("cate");
        //全部主题
        List<Topic> topics=topicService.listTopicsAndUsers();

        //获取统计信息
        int topicsNum=topicService.getTopicsNum();
        int usersNum=userService.getUserCount();
        //获取用户信息
        Integer uid=(Integer) session.getAttribute("userId");
        User user=userService.getUserById(uid);
        //最热主题
        List<Topic> hotestTopics=topicService.listMostCommentsTopics();

        indexPage.addObject("topics",topics);
        indexPage.addObject("hotestTopics",hotestTopics);
        indexPage.addObject("topicsNum",topicsNum);
        indexPage.addObject("usersNum",usersNum);
        indexPage.addObject("user",user);
        return  indexPage;
    }

    /**
     * 渲染主题详细页面
     * @param id
     * @param session
     * @return
     */
    @RequestMapping("/t/{id}")
    public ModelAndView toTopic(@PathVariable("id")Integer id,HttpSession session){
        //点击量加一
        boolean ifSucc=topicService.clickAddOne(id);
        //获取主题信息
        Topic topic=topicService.selectById(id);
        //获取主题全部评论
        List<Reply> replies=replyService.getRepliesOfTopic(id);
        //获取评论数
        int repliesNum=replyService.repliesNum(id);
        //获取统计信息
        int topicsNum=topicService.getTopicsNum();
        int usersNum=userService.getUserCount();
        //获取用户信息
        Integer uid=(Integer) session.getAttribute("userId");
        User user=userService.getUserById(uid);
        //最热主题
        List<Topic> hotestTopics=topicService.listMostCommentsTopics();

        //渲染视图
        ModelAndView topicPage=new ModelAndView("detail");
        topicPage.addObject("topic",topic);
        topicPage.addObject("replies",replies);
        topicPage.addObject("repliesNum",repliesNum);
        topicPage.addObject("topicsNum",topicsNum);
        topicPage.addObject("usersNum",usersNum);
        topicPage.addObject("user",user);
        topicPage.addObject("hotestTopics",hotestTopics);
        return topicPage;
    }

    /**
     * 渲染指定板块页面
     */
    @RequestMapping("/tab/{tabNameEn}")
    public ModelAndView toTabPage(@PathVariable("tabNameEn")String tabNameEn,HttpSession session){
        Tab tab=tabService.getByTabNameEn(tabNameEn);
        Integer tabId=tab.getId();

        ModelAndView indexPage=new ModelAndView("cate");
        //全部主题
        List<Topic> topics=topicService.listTopicsAndUsersOfTab(tabId);

        //获取统计信息
        int topicsNum=topicService.getTopicsNum();
        int usersNum=userService.getUserCount();

        //获取用户信息
        Integer uid=(Integer) session.getAttribute("userId");
        User user=userService.getUserById(uid);
        //最热主题
        List<Topic> hotestTopics=topicService.listMostCommentsTopics();

        indexPage.addObject("topics",topics);
        indexPage.addObject("topicsNum",topicsNum);
        indexPage.addObject("usersNum",usersNum);
        indexPage.addObject("tab",tab);
        indexPage.addObject("user",user);
        indexPage.addObject("hotestTopics",hotestTopics);
        return  indexPage;
    }

    /**
     * 发表主题
     * @param request
     * @param session
     * @return
     */
    @RequestMapping(value = "/topic/add", method = RequestMethod.POST)
    public ModelAndView addTopic(HttpServletRequest request,HttpSession session){
        ModelAndView indexPage;
        //未登陆
        if(session.getAttribute("userId")==null){
            indexPage=new ModelAndView("redirect:/signin");
            return  indexPage;
        }
        //处理参数
        Integer userId=(Integer) session.getAttribute("userId");
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
        boolean ifSuccAddCredit=userService.addCredit(1,userId);
        if (ifSucc){
            if (log.isInfoEnabled()){
                log.info("添加主题成功!");
            }
        }
        indexPage=new ModelAndView("redirect:/");

        return  indexPage;
    }

}
