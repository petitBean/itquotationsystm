package com.orz.test.serviceTest;

import com.orz.bean.User;
import com.orz.service.UserService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * @author Wangxingze
 * @date 2019-07-02 10:17
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class UserServiceTest {

    @Autowired
    private UserService userService;

    @Test
    public void path(){
        for(int i=0;i<10;i++){
            System.out.println("路径："+System.getProperty("evan.webapp"));
        }
    }

    @Test
    public void findAllTest(){
        List<User> users=userService.findAll();
        Assert.assertEquals(1,users.size());
    }

    @Test
    public void insertUser(){
        User user=new User(2,"田名旭","123456");
        try {
            userService.insertOneUser(user);
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

    @Test
    public void updateUser(){
      User user=new User(2,"wxz","123456");
      try{
          userService.updateUserById(user);
      }
      catch(Exception e){
          System.out.println(e.getMessage());
      }
    }


    @Test
    public void findByUserName(){
        User user=userService.findOneUserByUserName("wxz");
        Assert.assertNotNull(user);
    }

    @Test
    public void findOnePage(){
        List<User> userList=userService.findOnePage(2,2);
        Assert.assertEquals(1,userList.size());
    }

    @Test
    public void findByUserId(){
        User user=userService.findOneUserByUserId(2);
        Assert.assertNotNull(user);
    }


}
