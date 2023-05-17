package com.tz.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.support.HttpRequestHandlerServlet;

import com.tz.dao.UserDao;
import com.tz.dao.impl.UserDaoImpl;
import com.tz.entity.User;

/**
 * 基于注解的Controller
 */
//表示当前类是被视作为一个控制器
@Controller
@RequestMapping("/user")
//往model中添加的数据会同时添加到Session中
//@SessionAttributes("users")
public class UserController{


@Autowired
   UserDao userDao;   
 
    @RequestMapping("/register")
    public String register(User user) {
    
    	userDao.addUser(user);
        return "/index.jsp";
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
    	
    	session.invalidate();
        return "/index.jsp";
    }
    
    @RequestMapping("/changepwd")
    public String changepwd(String oldpwd,String newpwd,String id) {
    	userDao.changePwd(oldpwd,newpwd,id);
    	
        return "/index.jsp";
    }
    
    @RequestMapping("/login")
	public String login(Model model,String id,String password,HttpSession session,HttpServletResponse resp){
		List list = userDao.selectByUserId(id);
		
		if(list==null) 
			return null;
		User user = (User) list.get(0);
		if(null!=user.getPassword()){
			
			if(user.getPassword().equals(password)){
			        	session.setAttribute("user", user);
						session.setAttribute("id", id);
						PrintWriter out;
						try {
							out = resp.getWriter();
							out.write("right");
						} catch (IOException e) {
							e.printStackTrace();
						}
				
			}
		}
		return null;
	}
}
