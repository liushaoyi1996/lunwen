package com.tz.dao;

import java.util.List;

import com.tz.entity.CartVo;
import com.tz.entity.GongGao;
import com.tz.entity.Mobile;
import com.tz.entity.User;

public interface MobileDao {

	List getCategories();

	List selectByCate(String categoryid);

	List selectByModel(String model);

	void addMobile(String mid);

	List getCart();

	void changeNum(String mid, String num);

	void deleteItem(String mid);

	void saveOrder(CartVo cv);

	void deleteCart();

	List getHotSell();

	List<CartVo> getLowPrice();

	List getNews();

	List getGongGao();

	List getMobile();

	void remai(String id);

	void tejia(String id);

	void remaia(String id);

	void tejiaa(String id);

	void delnew(String id);

	List getOrders();

	void shenhe(String id);
	void shenhea(String id);

	void addNews(String content);

	GongGao selectByGId();

	void updateg(GongGao gg);

	void addMobiles(Mobile mobile, String cid);

}
