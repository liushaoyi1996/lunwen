package com.tz.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tz.dao.MobileDao;
import com.tz.dao.UserDao;
import com.tz.entity.Admin;
import com.tz.entity.GongGao;
import com.tz.entity.Mobile;
import com.tz.entity.User;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	UserDao userDao;
	@Autowired
	MobileDao mobileDao;
	
	@RequestMapping("/login")
	public String login(Admin admin,HttpSession session){
		Admin a=userDao.selectAdmin(admin.getUsername());	
		if(a.getPassword().equals(admin.getPassword())){
		  session.setAttribute("admin", admin);
		  session.setAttribute("userType", 0);
		}
		return "/admin/index.jsp";
	}
	
	@RequestMapping("/hotsell")
	public String hotsell(HttpSession session){
		List list = mobileDao.getMobile();
		session.setAttribute("mlist", list);
		return "/admin/hotsell.jsp";
		
	}
	@RequestMapping("/lowprice")
	public String lowprice(HttpSession session){
		List list = mobileDao.getMobile();
		session.setAttribute("mlist", list);
		return "/admin/hotsell.jsp";
		
	}
	@RequestMapping("/remai")
	public String remai(HttpSession session,String id){
		mobileDao.remai(id);
		
		return "/admin/hotsell";
	}
	@RequestMapping("/tejia")
	public String tejia(HttpSession session,String id){
		mobileDao.tejia(id);
		
		return "/admin/hotsell";
	}
	@RequestMapping("/remaia")
	public String remaia(HttpSession session,String id){
		mobileDao.remaia(id);

		return "/admin/hotsell";
	}
	@RequestMapping("/tejiaa")
	public String tejiaa(HttpSession session,String id){
		mobileDao.tejiaa(id);

		return "/admin/hotsell";
	}
	@RequestMapping("/orders")
	public String orders(HttpSession session){
		List list= mobileDao.getOrders();
		session.setAttribute("olist", list);
		return "/admin/orderlist.jsp";
	}
	@RequestMapping("/shenhe")
	public String shenhe(HttpSession session,String id){
		mobileDao.shenhe(id);

		List list= mobileDao.getOrders();
		session.setAttribute("olist", list);
		return "/admin/orderlist.jsp";
	}
	@RequestMapping("/shenhea")
	public String shenhea(HttpSession session,String id){
		mobileDao.shenhea(id);
		List list= mobileDao.getOrders();
		session.setAttribute("olist", list);

		return "/admin/orderlist.jsp";
	}
	@RequestMapping("/addnews")
	public String addnews(HttpSession session,String content){
		mobileDao.addNews(content);
		
		return "/admin/addnews.jsp";
	}

	@RequestMapping("/newslist")
	public String news(HttpSession session){
		List list = mobileDao.getNews();

		session.setAttribute("contentlist", list);
		return "/admin/newlist.jsp";

	}
	@RequestMapping("/preupdateg")
	public String preupdateg(HttpSession session){
		GongGao g = mobileDao.selectByGId();	
		session.setAttribute("g", g);
		return "/admin/updateg.jsp";
	}
	@RequestMapping("/updateg")
	public String updateg(GongGao gg,HttpSession session){			
		mobileDao.updateg(gg);			
		return "redirect:/admin/index.jsp";
	}
	@RequestMapping("/delnew")
	public String delnew(HttpSession session,String id){
		mobileDao.delnew(id);
		return "/admin/newslist";
	}
	@RequestMapping("/addmobile")
	public String addmobile(HttpSession session,Mobile mobile,String cid){
		mobileDao.addMobiles(mobile,cid);
		
		return "/admin/addmobile.jsp";
	}

	
	@RequestMapping("/users")
	public String users(HttpSession session){
		List list = userDao.findUsers();	
		session.setAttribute("ulist", list);
		return "/admin/users.jsp";
	}
	@RequestMapping("/preupdateuser")
	public String preupdateuser(String id,HttpSession session){
		User u = userDao.selectByUId(id);	
		session.setAttribute("u", u);
		return "/admin/updateu.jsp";
	}
	@RequestMapping("/updateu")
	public String updateu(User user,HttpSession session){			
		userDao.updateu(user);			
		return "redirect:/admin/users";
	}
	@RequestMapping("/deleteuser")
	public String deleteuser(String id,HttpSession session){
		userDao.deleteuser(id);	
		
		return "redirect:/admin/users";
	}
	
}
