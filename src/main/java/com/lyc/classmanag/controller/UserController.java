package com.lyc.classmanag.controller;

import com.lyc.classmanag.entity.User;
import com.lyc.classmanag.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {
    @Autowired
    private UserService userService;
    //登录控制器
    @RequestMapping(value = "/login.action",method = RequestMethod.POST)
    public String login(String username, String password, Model model, HttpSession session){
        User user = userService.findUser(username,password);
        if (user != null) {
            session.setAttribute("USER_SESSION",user);
            return "admin/HomePage";
        }
        model.addAttribute("msg","账号或密码错误，请重新输入");
        return "Login";
    }
    //返回主页
    @RequestMapping(value = "/back.action")
    public String backToHomePage(){
        return "admin/HomePage";
    }
    //退出登录
    @RequestMapping(value = "/logout.action")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:login.action";
    }
    //登录页面重定向
    @RequestMapping(value = "/login.action",method=RequestMethod.GET)
    public String toLogin(){
        return "Login";
    }
}
