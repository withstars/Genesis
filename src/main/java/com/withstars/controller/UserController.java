package com.withstars.controller;

import com.withstars.domain.LoginLog;
import com.withstars.domain.Topic;
import com.withstars.domain.User;
import com.withstars.service.impl.LoginLogServiceImpl;
import com.withstars.service.impl.TopicServiceImpl;
import com.withstars.service.impl.UserServiceImpl;
import com.withstars.util.ProduceMD5;
import eu.bitwalker.useragentutils.UserAgent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.*;

/**
 * 用户相关控制类
 */
@Controller
public class UserController {

    @Autowired
    public UserServiceImpl userService;

    @Autowired
    public LoginLogServiceImpl loginLogService;

    @Autowired
    public TopicServiceImpl topicService;


    /**
     * 用户注册
     */
    @RequestMapping("/user/add/do")
    public String addUser(HttpServletRequest request){
        //新建User对象
        User user=new User();
        //处理手机号
        String phoneNum=request.getParameter("tel");
        String areaCode=request.getParameter("areaCode");
        String phone=areaCode+phoneNum;
        //用户类型
        Byte type=new Byte("0");
        //密码加密处理
        String password= ProduceMD5.getMD5(request.getParameter("password"));
        //生成随机数，用于生成头像URL
        Random rand=new Random();
        int randomNum=rand.nextInt(10)+1;
        String avatarUrl="/img/avatar/avatar-default-"+randomNum+".png";
        //初始化User对象
        user.setUsername(request.getParameter("username"));
        user.setPassword(password);
        user.setEmail(request.getParameter("email"));
        user.setPhoneNum(phone);
        user.setCreateTime(new Date());
        user.setUpdateTime(new Date());
        user.setCredit(0);
        user.setType(type);
        user.setAvatar(avatarUrl);

        boolean ifSucc=userService.addUser(user);
        System.out.print(ifSucc);
        return "redirect:/";
    }

    /**
     * 用户登陆
     * @param request
     * @param session
     * @return 0:用户名不存在 1:密码错误 2:登录成功
     */

    @RequestMapping("/api/loginCheck")
    @ResponseBody
    public Object signin(HttpServletRequest request,HttpSession session){
        //处理参数
        String password=ProduceMD5.getMD5(request.getParameter("password"));
        String username=request.getParameter("username");
        //验证用户名密码
        int loginVerify=userService.login(username,password);

        HashMap<String, String> res = new HashMap<String, String>();

        //登录成功
        if(loginVerify == 2){
            User user =userService.getUserByUsername(username);
            Integer userId=user.getId();
            //添加积分
            boolean ifSuccAddCredit=userService.addCredit(1,userId);
            //用户信息写入session
            session.setAttribute("userId",userId);
            session.setAttribute("username",username);
            //获取登录信息
            String ip=getRemortIP(request);
            UserAgent userAgent = UserAgent.parseUserAgentString(request.getHeader("User-Agent"));
            //获取用户的浏览器名
            String userbrowser = userAgent.getBrowser().toString();
            //写入登录日志
            LoginLog log=new LoginLog();
            log.setDevice(userbrowser);
            log.setIp(ip);
            log.setUserId(userId);
            log.setLoginTime(new Date());
            boolean ifSuccAddLog=loginLogService.addLog(log);

            res.put("stateCode", "2");
        }
        //密码错误
        else if (loginVerify == 1){
            res.put("stateCode", "1");
        }
        //用户名不存在
        else {
            res.put("stateCode", "0");
        }
        return res;
    }

    /**
     * 用户登出
     */
    @RequestMapping("/signout")
    public String signout(HttpSession session){
        session.removeAttribute("userId");
        session.removeAttribute("username");
        return "redirect:/";
    }

    /**
     * 获取客户端IP
     */
    public String getRemortIP(HttpServletRequest request) {
        if (request.getHeader("x-forwarded-for") == null) {
            return request.getRemoteAddr();
        }
        return request.getHeader("x-forwarded-for");
    }

    /**
     * 用户个人主页
     */
    @RequestMapping("/member/{username}")
    public ModelAndView personalCenter(@PathVariable("username")String username,HttpSession session){
        boolean ifExistUser=userService.existUsername(username);
        //获取统计信息
        int topicsNum=topicService.getTopicsNum();
        int usersNum=userService.getUserCount();

        //获取用户信息
        Integer uid=(Integer) session.getAttribute("userId");
        User user=userService.getUserById(uid);
        //最热主题
        List<Topic> hotestTopics=topicService.listMostCommentsTopics();

        ModelAndView mv=new ModelAndView("user_info");
        mv.addObject("hotestTopics",hotestTopics);
        if (ifExistUser){
            User resultUser=userService.getUserByUsername(username);
            mv.addObject("userInfo",resultUser);
            mv.addObject("topicsNum",topicsNum);
            mv.addObject("usersNum",usersNum);
            mv.addObject("user",user);
            return mv;
        }else {
            String errorInfo=new String("会员未找到");
            mv.addObject("errorInfo",errorInfo);
            return mv;
        }
    }

    @RequestMapping("/settings")
    public ModelAndView settings(HttpServletRequest request, HttpSession session){

        Integer uid=(Integer) session.getAttribute("userId");
        User user=userService.getUserById(uid);

        //最热主题
        List<Topic> hotestTopics=topicService.listMostCommentsTopics();

        ModelAndView mv=new ModelAndView("settings");
        mv.addObject("user",user);
        mv.addObject("hotestTopics",hotestTopics);
        return mv;
    }

    @RequestMapping(value = "/settings/avatar",method = RequestMethod.GET)
    public ModelAndView updateAvatar(HttpServletRequest request, HttpSession session){

        Integer uid=(Integer) session.getAttribute("userId");
        User user=userService.getUserById(uid);

        //最热主题
        List<Topic> hotestTopics=topicService.listMostCommentsTopics();

        ModelAndView mv=new ModelAndView("update_avatar");
        mv.addObject("user",user);
        mv.addObject("hotestTopics",hotestTopics);
        return mv;
    }
    @RequestMapping(value = "/settings/avatar/update",method = RequestMethod.POST)
    public ModelAndView updateAvatarDo(@RequestPart("avatar")MultipartFile avatarFile, HttpServletRequest request, HttpSession session){
        Integer uid=(Integer) session.getAttribute("userId");

        String fileName=avatarFile.getOriginalFilename();
        String suffix=fileName.substring(fileName.lastIndexOf(".")+1, fileName.length());
        Long date=new Date().getTime();
        String newFileName=date+"-"+uid+"."+suffix;
        String absolutePath=session.getServletContext().getRealPath("/static/img/avatar")+"/"+newFileName;
        String relativePath="/img/avatar"+"/"+newFileName;
        User newUser=new User();
        newUser.setAvatar(relativePath);
        newUser.setId(uid);
        File file=new File(absolutePath);

        if (!file.exists()){
            try {
                avatarFile.transferTo(file);
                userService.updateUser(newUser);
            }catch (Exception e){
                e.printStackTrace();
            }
        }




        User user=userService.getUserById(uid);

        //最热主题
        List<Topic> hotestTopics=topicService.listMostCommentsTopics();

        ModelAndView mv=new ModelAndView("update_avatar");
        mv.addObject("user",user);

        mv.addObject("hotestTopics",hotestTopics);
        return mv;
    }

}
