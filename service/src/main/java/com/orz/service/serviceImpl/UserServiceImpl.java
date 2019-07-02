package com.orz.service.serviceImpl;

import com.github.pagehelper.PageHelper;
import com.orz.bean.User;
import com.orz.common.enums.OrzExceptionEnum;
import com.orz.common.exception.OrzException;
import com.orz.dao.UserDao;
import com.orz.service.UserService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author Wangxingze
 * @date 2019-07-02 09:45
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    /**
     * 分页查询
     * @param page
     * @param size
     * @return
     */
    public  List<User> findOnePage(Integer page,Integer size){
        //告诉开始分页
        PageHelper.startPage(page,size);
        return userDao.findAll();
    }

    /**
     * 查询所有用户
     * @return
     */
    @Override
   public List<User> findAll(){
       return userDao.findAll();
   }

    /**
     * 通过用户名查找一个用户信息
     * @param userName
     * @return
     */
    @Override
   public User findOneUserByUserName(String userName){
        return userDao.findOneUserByUserName(userName);
    }

    /**
     * 通过用户id查询一个用户
     * @param userId
     * @return
     */
    @Override
   public User findOneUserByUserId(Integer userId){
        return userDao.findOneUserByUserId(userId);
    }

    /**
     * 插入一个新用户
     * @param user
     */
    @Override
    @Transactional
    public void insertOneUser(User user) throws Exception{
        try {
            userDao.insertOneUser(user);
        }
        catch (Exception e){
            throw new OrzException(OrzExceptionEnum.INSERT_USER_FAILED);
        }
    }

    /**
     * 通过用户id更新用户信息
     * @param user
     */
    @Override
    @Transactional
   public void updateUserById(User user) throws Exception{
       try {
           User newUser= userDao.findOneUserByUserId(user.getUserId());
           if(newUser==null){
               throw new OrzException(OrzExceptionEnum.UPDATE_USER_FAILED);
           }
           BeanUtils.copyProperties(user,newUser);
           userDao.updateUserById(newUser);
       }
       catch (Exception e){
           //e.printStackTrace();
           throw new OrzException(OrzExceptionEnum.UPDATE_USER_FAILED);
       }
   }

}
