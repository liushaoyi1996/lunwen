package com.tz.dao;

import java.util.List;

import com.tz.entity.Admin;
import com.tz.entity.User;

public interface UserDao {

	void addUser(User user);

	List selectByUserId(String id);

	void changePwd(String oldpwd, String newpwd, String id);

	Admin selectAdmin(String username);

	

	void delete(String id);

	
	void update(Long i, String info);

	

	List findUsers();

	User selectByUId(String id);

	void updateu(User user);

	void deleteuser(String id);

	List findSnackOrders();

	List findMovieOrders();

	void yushou(String id);

	List getSnackBack();

	void tuiDing1(String id);

	List getMovieBack();

	void tuiDing2(String id);

	List getSchedules();

	void addSeats(Long id);
     
}
