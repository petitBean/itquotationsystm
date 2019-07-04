package com.orz.common.form;


import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * 用户登录对象
 * @author Wangxingze
 * @date 2019-07-02 12:46
 */
public class UserForm {

    /**
     * 用户登录用户名
     */
    private String userName;

    /**
     * 用户登录密码
     */

    private String userPsw;

    public UserForm() {
    }

    public UserForm(String userName, String userPsw) {
        this.userName = userName;
        this.userPsw = userPsw;
    }

    public String getUserPsw() {
        return userPsw;
    }

    public void setUserPsw(String userPsw) {
        this.userPsw = userPsw;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
