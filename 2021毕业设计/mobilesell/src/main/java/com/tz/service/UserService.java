package com.tz.service;

import com.tz.entity.User;

import java.util.List;

/**
 * Created by Administrator on 17-3-21.
 */
public interface UserService {

    /**
     * 查询所有用户
     */
    List<User> findAllUsers();

    /**
     * 根据用户名模糊查询用户
     */
    List<User> findUserByName(String name);

    /**
     * 根据id查询用户
     */
    User findUserById(Long id);

    /**
     * 添加用户
     */
    void addUser(User user);

    /**
     * 删除用户
     */
    void removeUser(User user);

    /**
     * 更新用户
     */
    void editUser(User user);
}
