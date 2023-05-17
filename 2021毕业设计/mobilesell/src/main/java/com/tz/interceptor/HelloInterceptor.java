package com.tz.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 拦截器
 */
public class HelloInterceptor implements HandlerInterceptor {

    //在请求处理的方法之前执行
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        System.out.println("--处理前------------------------");
        //httpServletResponse.sendRedirect(httpServletRequest.getContextPath() + "/index.jsp");
        return true;
    }

    //在请求处理的方法之后执行
    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
        System.out.println("--处理后------------------------");
    }

    //在DispatcherServlet处理后执行,一般做一些清理工作
    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {
        System.out.println("--DispatcherServlet后----------");
    }
}
