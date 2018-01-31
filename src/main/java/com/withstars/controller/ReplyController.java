package com.withstars.controller;

import com.withstars.domain.Reply;
import com.withstars.service.impl.ReplyServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * 回复相关控制类
 */
@Controller
public class ReplyController {

    @Autowired
    public ReplyServiceImpl replyService;

    /**
     * 添加评论
     */
    @RequestMapping(value = "/reply/add",method = RequestMethod.POST)
    public ModelAndView addReply(HttpServletRequest request, RedirectAttributes redirect){
        //处理参数
        Integer topicId=Integer.parseInt(request.getParameter("topicId"));
        Integer replyUserId=Integer.parseInt(request.getParameter("replyUserId"));
        String content=request.getParameter("content");
        //创建reply
        Reply reply=new Reply();
        reply.setTopicId(topicId);
        reply.setReplyUserId(replyUserId);
        reply.setContent(content);
        reply.setCreateTime(new Date());
        reply.setUpdateTime(new Date());
        //执行add方法
        boolean ifSucc=replyService.addReply(reply);

        //新建视图
        ModelAndView view=new ModelAndView("redirect:/t?id="+topicId);
        return view;
    }


}
