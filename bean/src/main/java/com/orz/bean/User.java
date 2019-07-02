package com.orz.bean;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

/**
 * @author Wangxingze
 * @date 2019-07-01 19:19
 */

public class User{

    /**
     * 用户id
     */
    @GeneratedValue
    @NotNull
    @Id
    private Integer userId;

    /**
     * 用户名
     */
    @NotNull
    private String userName;

    /**
     * 用户密码
     */
    @NotNull
    private String userPsw;

    /**
     * 预留扩展字段1
     */
    private String other1;

    /**
     * 预留扩展字段2
     */
    private  String other;

    /**
     * 无参构造
     */
    public User() {
    }

    /**
     * 全参构造函数
     * @param userId
     * @param userName
     * @param userPsw
     * @param other1
     * @param other2
     */
    public User(Integer userId,String userName, String userPsw, String other1, String other2) {
        this.userId=userId;
        this.userName = userName;
        this.userPsw = userPsw;
        this.other1 = other1;
        this.other = other2;
    }

    /**
     * 重载构造函数
     * @param userId
     * @param userName
     * @param userPsw
     */
    public User(Integer userId,String userName, String userPsw) {
        this.userId=userId;
        this.userName = userName;
        this.userPsw = userPsw;
        this.other1 = null;
        this.other = null;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPsw() {
        return userPsw;
    }

    public void setUserPsw(String userPsw) {
        this.userPsw = userPsw;
    }

    public String getOther1() {
        return other1;
    }

    public void setOther1(String other1) {
        this.other1 = other1;
    }

    public String getOther() {
        return other;
    }

    public void setOther(String other) {
        this.other = other;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", userPsw='" + userPsw + '\'' +
                ", other1='" + other1 + '\'' +
                ", other2='" + other + '\'' +
                '}';
    }

}//user

