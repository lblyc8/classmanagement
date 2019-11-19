package com.lyc.classmanag.interceptor;

import com.lyc.classmanag.entity.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//登录拦截器
public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object handler) throws Exception {
        String url = httpServletRequest.getRequestURI();
        if(url.indexOf("/login.action") >=0){
            return true;
        }
        HttpSession session=httpServletRequest.getSession();
        User user = (User) session.getAttribute("USER_SESSION");
        if(user!=null){
            return true;
        }
        httpServletRequest.setAttribute("msg","您还没有登录，请先登录！");
        httpServletRequest.getRequestDispatcher("/WEB-INF/views/Login.jsp").forward(httpServletRequest,httpServletResponse);
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object handler, Exception e) throws Exception {

    }
}
