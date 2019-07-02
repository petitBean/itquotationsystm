package com.orz.common.enums;

public enum OrzConStrantEnum {

    /**
     * 用户登录时记录用户名的cookie的name在session中对应的名称
     */
    LOGIN_SESSION_CONSTANT("user-login-cookie-name"),

    ;

    /**
     * 常量值
     */
    private String value;

    /**
     * 构造函数
     * @param value
     */
    OrzConStrantEnum(String value){
        this.value=value;
    }

    public String getValue(){
        return value;
    }


}
