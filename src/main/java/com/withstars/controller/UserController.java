package com.withstars.controller;

import com.withstars.domain.User;
import com.withstars.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.security.MessageDigest;
import java.util.Date;

@Controller
public class UserController {

    @Autowired
    public UserServiceImpl userService;

    //生成MD5
    public static String getMD5(String message) {
        String md5 = "";
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");  // 创建一个md5算法对象
            byte[] messageByte = message.getBytes("UTF-8");
            byte[] md5Byte = md.digest(messageByte);              // 获得MD5字节数组,16*8=128位
            md5 = bytesToHex(md5Byte);                            // 转换为16进制字符串
        } catch (Exception e) {
            e.printStackTrace();
        }
        return md5;
    }
    // 二进制转十六进制
    public static String bytesToHex(byte[] bytes) {
        StringBuffer hexStr = new StringBuffer();
        int num;
        for (int i = 0; i < bytes.length; i++) {
            num = bytes[i];
            if(num < 0) {
                num += 256;
            }
            if(num < 16){
                hexStr.append("0");
            }
            hexStr.append(Integer.toHexString(num));
        }
        return hexStr.toString().toUpperCase();
    }

    //用户注册
    @RequestMapping("/user/add/do")
    public String addUser(HttpServletRequest request, RedirectAttributes redirect){
        //新建User对象
        User user=new User();
        //处理手机号
        String phoneNum=request.getParameter("tel");
        String areaCode=request.getParameter("areaCode");
        String phone=areaCode+phoneNum;
        //用户类型
        Byte type=new Byte("0");
        //密码加密处理
        String password=getMD5(request.getParameter("password"));
        //初始化User对象
        user.setUsername(request.getParameter("username"));
        user.setPassword(password);
        user.setEmail(request.getParameter("email"));
        user.setPhoneNum(phone);
        user.setCreateTime(new Date());
        user.setUpdateTime(new Date());
        user.setCredit(0);
        user.setType(type);

        boolean ifSucc=userService.addUser(user);
        System.out.print(ifSucc);
        return "redirect:/";
    }

    //用户登陆
    @RequestMapping("/signin/do")
    public String signin(HttpServletRequest request, RedirectAttributes redirect){
        //处理前端密码
        String password=getMD5(request.getParameter("password"));

        String username=request.getParameter("username");
        if(userService.login(username,password)){
            String uId=userService.getUserId(username);
            request.getSession().setAttribute("uid",uId);
            request.getSession().setAttribute("username",username);
            System.out.println("登陆成功!用户Id为"+uId);
            return "redirect:/";
        }else {
            System.out.println("登陆失败!");
            return "redirect:/signin";
        }
    }

    //用户登出
    @RequestMapping("/signout")
    public String signout(HttpServletRequest request, RedirectAttributes redirect){
        request.getSession().removeAttribute("uid");
        request.getSession().removeAttribute("username");
        return "redirect:/";
    }
}
