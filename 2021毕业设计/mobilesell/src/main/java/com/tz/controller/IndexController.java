package com.tz.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tz.dao.MobileDao;
import com.tz.entity.CartVo;
import com.tz.entity.Vo;

@Controller
@RequestMapping("/index")
public class IndexController {

	@Autowired
	MobileDao mobileDao;
	
	@RequestMapping("/category")
	public String category(HttpSession session){
		List clist = mobileDao.getCategories();
		session.setAttribute("clist", clist);
		return "/category.jsp";
		
	}
	
	@RequestMapping("/add")
	@ResponseBody
	public String add(HttpSession session,String mid){
		if (session.getAttribute("user") == null) {
			return "no";
		}else {
			mobileDao.addMobile(mid);
			return "ok";
		}
	}
	@RequestMapping("/changenum")
	@ResponseBody
	public String changenum(HttpSession session,String mid,String num){
		mobileDao.changeNum(mid,num);
		
		return "ok";
	}
	@RequestMapping("/deleteitem")
	@ResponseBody
	public String deleteitem(HttpSession session,String mid){
		mobileDao.deleteItem(mid);
		
		return "ok";
	}
	@RequestMapping("/submit")
	@ResponseBody
	public String submit(HttpSession session){
		List<CartVo> list = mobileDao.getCart();
		for(CartVo cv:list){
			mobileDao.saveOrder(cv);
		}
		mobileDao.deleteCart();
		return "ok";
	}
	
	@RequestMapping("/cart")
	public String cart(HttpSession session){
		List<CartVo> list = mobileDao.getCart();
		
		session.setAttribute("clist", list);
		if (session.getAttribute("user") == null) {
			return "/login.jsp";
		}else {
			return "/cart.jsp";
		}
		
	}

	@RequestMapping("/hotsell")
	public String hotsell(HttpSession session){
		List list = mobileDao.getHotSell();
		
		session.setAttribute("mobilelist", list);
		return "/index.jsp";
		
	}
	@RequestMapping("/lowprice")
	public String lowprice(HttpSession session){
		List<CartVo> list = mobileDao.getLowPrice();
		
		session.setAttribute("mobilelist", list);
		return "/index.jsp";
		
	}
	@RequestMapping("/selectbycate")
	public String selectbycate(HttpSession session,String categoryid){
		List list = mobileDao.selectByCate(categoryid);
		session.setAttribute("mobilelist", list);
		return "/index.jsp";
		
	}
    @RequestMapping("/selectbycatea")
    public String selectbycatea(HttpSession session,String categoryid){
        List list = mobileDao.selectByCate(categoryid);
        session.setAttribute("mobilelist", list);
        return "/mobile.jsp";

    }
	@RequestMapping("/selectbymodel")
	public String selectbymodel(HttpSession session,String model){
		List list = mobileDao.selectByModel(model);
		System.out.print(model);
		session.setAttribute("mobilelist", list);
		return "/index.jsp";
		
	}
	
	@RequestMapping(value = "/setflag", produces = "application/json")
	@ResponseBody
	public String setFlag(HttpSession session,String seatnum){
		//scheduleDao.setFlag(seatnum);
		
		return "1";
		
	}
	
	
	@RequestMapping("/news")
	public String news(HttpSession session){
		List list = mobileDao.getNews();
		
		session.setAttribute("contentlist", list);
		return "/content.jsp";
		
	}
	@RequestMapping("/gonggao")
	public String gonggao(HttpSession session){
		List list = mobileDao.getGongGao();
		
		session.setAttribute("contentlist", list);
		return "/content.jsp";
		
	}
	
	
}
