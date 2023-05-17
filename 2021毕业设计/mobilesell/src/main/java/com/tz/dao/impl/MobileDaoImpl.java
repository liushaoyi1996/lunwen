package com.tz.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.tz.dao.MobileDao;
import com.tz.entity.CartVo;
import com.tz.entity.GongGao;
import com.tz.entity.Mobile;

@Repository
@Transactional
public class MobileDaoImpl implements MobileDao{

	@Autowired
    private SessionFactory sessionFactory;

    private Session getSession() {
        return sessionFactory.getCurrentSession();
    }

	@Override
	public List getCategories() {

		return getSession().createQuery("from com.tz.entity.Category").list();
	}

	@Override
	public List selectByCate(String categoryid) {
		return getSession().createQuery("from com.tz.entity.Mobile where category.id = :id").setParameter("id", Long.valueOf(categoryid)).list();
	}

	@Override
	public List selectByModel(String model) {
		return getSession().createQuery("from com.tz.entity.Mobile where model like :model").setParameter("model", "%"+model+"%").list();
	}

	@Override
	public void addMobile(String mid) {
		Query q = getSession().createSQLQuery("insert into carts values(null,1,:mid)").setParameter("mid", mid);
        q.executeUpdate();
	}

	@Override
	public List getCart() {
		
		return getSession().createSQLQuery("select distinct model,price,num,mobileid as id from carts c left join mobile m on c.mobileid=m.id").addEntity(CartVo.class).list();
	}

	@Override
	public void changeNum(String mid, String num) {
		Query query  = getSession().createSQLQuery("update carts set num = :num where mobileid = :mid")
				.setParameter("mid", Long.valueOf(mid)).setParameter("num", Integer.valueOf(num));
		query.executeUpdate();
	}

	@Override
	public void deleteItem(String mid) {
		Query query= getSession().createQuery("delete from com.tz.entity.Cart where mobileid = :mid").setParameter("mid", Long.valueOf(mid));
		query.executeUpdate();
	}

	@Override
	public void saveOrder(CartVo cv) {
		Query q = getSession().createSQLQuery("insert into orders values(null,:model,:num,:price,0)").setParameter("model", cv.getModel())
				.setParameter("num", cv.getNum()).setParameter("price", cv.getPrice());
        q.executeUpdate();
	}

	@Override
	public void deleteCart() {
		Query query= getSession().createQuery("delete from com.tz.entity.Cart");
		query.executeUpdate();
	}

	@Override
	public List getHotSell() {
		
		return getSession().createQuery("from com.tz.entity.Mobile where hotsell =1").list();
	}

	@Override
	public List<CartVo> getLowPrice() {
		
		return getSession().createQuery("from com.tz.entity.Mobile where lowprice =1").list();
	}

	@Override
	public List getNews() {
		
		return getSession().createQuery("from com.tz.entity.News").list();
	}

	@Override
	public List getGongGao() {
		
		return getSession().createQuery("from com.tz.entity.GongGao").list();
	}

	@Override
	public List getMobile() {
		return getSession().createQuery("from com.tz.entity.Mobile").list();
	}

	@Override
	public void remai(String id) {
		Query query  = getSession().createSQLQuery("update mobile set hotsell = 1 where id = :id")
				.setParameter("id", Long.valueOf(id));
		query.executeUpdate();
	}

	@Override
	public void tejia(String id) {
		Query query  = getSession().createSQLQuery("update mobile set lowprice = 1 where id = :id")
				.setParameter("id", Long.valueOf(id));
		query.executeUpdate();
	}

	@Override
	public void remaia(String id) {
		Query query  = getSession().createSQLQuery("update mobile set hotsell = 0 where id = :id")
				.setParameter("id", Long.valueOf(id));
		query.executeUpdate();
	}

	@Override
	public void delnew(String id) {
		Long i = Long.valueOf(id);
		Query query  = getSession().createQuery("delete from com.tz.entity.News where id = :id").setParameter("id", i);
		query.executeUpdate();
	}

	@Override
	public void tejiaa(String id) {
		Query query  = getSession().createSQLQuery("update mobile set lowprice = 0 where id = :id")
				.setParameter("id", Long.valueOf(id));
		query.executeUpdate();
	}

	@Override
	public List getOrders() {
		return getSession().createQuery("from com.tz.entity.Orders").list();
	}

	@Override
	public void shenhe(String id) {
		Query query  = getSession().createSQLQuery("update orders set status = 1 where id = :id")
				.setParameter("id", Long.valueOf(id));
		query.executeUpdate();
	}
	@Override
	public void shenhea(String id) {
		Query query  = getSession().createSQLQuery("update orders set status = 2 where id = :id")
				.setParameter("id", Long.valueOf(id));
		query.executeUpdate();
	}
	@Override
	public void addNews(String content) {
		Query q = getSession().createSQLQuery("insert into news values(null,:content)").setParameter("content", content);
		
        q.executeUpdate();
	}

	@Override
	public GongGao selectByGId() {
		return (GongGao) getSession().createQuery("from com.tz.entity.GongGao where id = 1").uniqueResult();
	}

	@Override
	public void updateg(GongGao gg) {
		Query query  = getSession().createSQLQuery("update gonggao set content = :con where id = 1")
				.setParameter("con", gg.getContent());
		query.executeUpdate();
	}

	@Override
	public void addMobiles(Mobile mobile,String cid) {
       Query q = getSession().createSQLQuery("insert into mobile values(null,:catename,:model,:price,:cateid,null,null,0,0)")
         .setParameter("catename", mobile.getCategoryname())
         .setParameter("model", mobile.getModel())
         .setParameter("price", mobile.getPrice())
         .setParameter("cateid", Long.valueOf(cid));
		
        q.executeUpdate();
	}
    
    
    
}
