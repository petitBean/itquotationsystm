package com.orz.dao;

import com.orz.bean.User;

import java.util.List;

public interface UserDao {

    /**
     * 查询所有用户
     * @return
     */
    List<User> findAll();

    /**
     * 通过用户名查找一个用户信息
     * @param userName
     * @return
     */
    User findOneUserByUserName(String userName);

    /**
     * 通过用户id查询一个用户
     * @param userId
     * @return
     */
    User findOneUserByUserId(Integer userId);

    /**
     * 插入一个新用户
     * @param user
     */
    void insertOneUser(User user);

    /**
     * 通过用户id更新用户信息
     * @param user
     */
    void updateUserById(User user);

}

