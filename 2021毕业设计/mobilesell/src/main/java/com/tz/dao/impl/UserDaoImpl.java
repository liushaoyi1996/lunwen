package com.tz.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.tz.dao.UserDao;
import com.tz.entity.Admin;
import com.tz.entity.User;

@Repository
@Transactional
public class UserDaoImpl implements UserDao{

	@Autowired
    private SessionFactory sessionFactory;

    private Session getSession() {
        return sessionFactory.getCurrentSession();
    }
    
	@Override
	public void addUser(User user) {
	   Query q = getSession().createSQLQuery("insert into user values(null,:connect,:password,:userId,:user_Address,:user_Name)").
	   setParameter("connect", user.getConnect())
	   .setParameter("password", user.getPassword())
	   .setParameter("userId", user.getUserId())
	   .setParameter("user_Address", user.getUser_Address())
	   .setParameter("user_Name", user.getUser_Name());
       q.executeUpdate();
	}

	@Override
	public List selectByUserId(String id) {
		
		return getSession().createQuery("from com.tz.entity.User where userId = :id").setParameter("id", id).list();
	}

	@Override
	public void changePwd(String oldpwd, String newpwd, String id) {
		String hql="update User u set u.password = :password where u.id= :id";
		Long i = Long.valueOf(id);
		Query query  = getSession().createQuery(hql).setParameter("password", newpwd).setParameter("id", i);
		query.executeUpdate();
		
	}

	@Override
	public Admin selectAdmin(String username) {
		
		return (Admin) getSession().createQuery("from com.tz.entity.Admin where username = :un").
				setParameter("un", username).uniqueResult();
	}

	
	

	@Override
	public void delete(String id) {
		Long i = Long.valueOf(id);
		Query query  = getSession().createQuery("delete from com.tz.entity.Movie where id = :id").setParameter("id", i);
		query.executeUpdate();
	}

	

	@Override
	public void update(Long i,String info) {
		Query query  = getSession().createSQLQuery("update movie set info = :info where id = :id").
				setParameter("info", info)
				.setParameter("id", i);
		query.executeUpdate();
		
	}

	
	@Override
	public List findUsers() {
		return getSession().createQuery("from com.tz.entity.User").list();
	}

	@Override
	public User selectByUId(String id) {
		return (User) getSession().createQuery("from com.tz.entity.User where id = :id").setParameter("id", Long.valueOf(id)).uniqueResult();
	}

	@Override
	public void updateu(User user) {
		Query query  = getSession().createSQLQuery("update user set connect = :connect,userId = :userId,"
				+ "password = :password,user_Name=:user_Name,user_Address=:user_Address where id = :id").
				setParameter("connect", user.getConnect())
				.setParameter("userId", user.getUserId())
				.setParameter("password", user.getPassword())
				.setParameter("user_Name", user.getUser_Name())
				.setParameter("user_Address", user.getUser_Address())
				.setParameter("id", user.getId());
		query.executeUpdate();
		
	}

	@Override
	public void deleteuser(String id) {
		Long i = Long.valueOf(id);
		Query query  = getSession().createQuery("delete from com.tz.entity.User where id = :id").setParameter("id", i);
		query.executeUpdate();
		
	}

	@Override
	public List findSnackOrders() {
		return getSession().createQuery("from com.tz.entity.SnackOrder").list();
	}

	@Override
	public List findMovieOrders() {
		return getSession().createQuery("from com.tz.entity.Orders").list();
	}

	@Override
	public void yushou(String id) {
		Query query  = getSession().createSQLQuery("update movie set onsell = 1 where id = :id")
				.setParameter("id", Long.valueOf(id));
		query.executeUpdate();
	}

	@Override
	public List getSnackBack() {
		return getSession().createQuery("from com.tz.entity.SnackOrder where status = 1").list();
	}

	@Override
	public void tuiDing1(String id) {
		Query query  = getSession().createSQLQuery("update snackorder set status = 2 where id = :id")
				.setParameter("id", Long.valueOf(id));
		query.executeUpdate();
	}

	@Override
	public List getMovieBack() {
		return getSession().createQuery("from com.tz.entity.Orders where tuiding = 1").list();
	}

	@Override
	public void tuiDing2(String id) {
		Query query  = getSession().createSQLQuery("update orders set tuiding = 2 where id = :id")
				.setParameter("id", Long.valueOf(id));
		query.executeUpdate();
	}

	@Override
	public List getSchedules() {
		return getSession().createQuery("from com.tz.entity.Schedule order by id desc").list();
	}

	@Override
	public void addSeats(Long id) {
		for(int i=0;i<20;i++){
			Query q = getSession().createSQLQuery("insert into seat values(null,0,:i,:id)").
					   setParameter("i", i+1)
					   .setParameter("id", id);
					  
				       q.executeUpdate();
		}
	}
	
}
