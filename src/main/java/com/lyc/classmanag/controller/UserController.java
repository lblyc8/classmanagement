package com.lyc.classmanag.controller;

import com.lyc.classmanag.entity.User;
import com.lyc.classmanag.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.Set;

@Controller
public class UserController {
    @Autowired
    private UserService userService;
    //登录控制器
    @RequestMapping(value = "/login.action",method = RequestMethod.POST)
    public String login(String UserId,String Password, Model model, HttpSession session){
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(UserId, Password);
        try{
            subject.login(token);
            User user = userService.findUserById(UserId);
            Set<String> roles = userService.findRole(UserId);
            String role = roles.iterator().next();
            String page = userService.findPage(role);
            session.setAttribute("USER_SESSION", user);
            return page + "/HomePage";
        }catch (Exception e){
            model.addAttribute("msg","账号或密码错误，请重新输入");
            return "Login";
        }
//        User user = userService.findUserById(UserId);
//        if (user != null) {
//            String role = userService.findRole(user.getUserId());
//            String page = userService.findPage(role);
//            session.setAttribute("USER_SESSION",user);
//            return page + "/HomePage";
//        }
//        model.addAttribute("msg","账号或密码错误，请重新输入");
//        return "Login";
    }
    //返回主页
    @RequestMapping(value = "/back.action")
    public String backToHomePage(HttpSession session){
        User user = (User) session.getAttribute("USER_SESSION");
        Set<String> roles = userService.findRole(user.getUserId());
        String role = roles.iterator().next();
        String page = userService.findPage(role);
        return page+"/HomePage";
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
