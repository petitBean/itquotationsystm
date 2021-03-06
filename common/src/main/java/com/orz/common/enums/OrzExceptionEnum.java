package com.orz.common.enums;

/**
 * 系统异常类型
 */
public enum OrzExceptionEnum {

    INSERT_USER_FAILED(101,"新增用户失败"),
    UPDATE_USER_FAILED(102,"新增用户失败"),
    USER_USERNAME_NULL(001,"用户名为空"),
    USER_USERPASW_NULL(002,"用户密码为空"),
    USER_USERNAME_REG_ERROR(003,"用户名格式错误"),
    USER_USERPSW_REG_ERROR(004,"密码格式错误，应该为数字和字母组合"),
    USER_USERNAME_WRONG(105,"用户名错误"),
    USER_USERPSW_WROBG(106,"密码错误"),
    INSERT_DATA_FAILED(107,"插入数据失败"),
    UPDATE_DATA_FAILED(108,"更新数据数据失败"),
    DELETE_DATA_FAILED(109,"删除数据数据失败"),
    FILE_UPLOAD_FAIED(121,"文件上传失败"),
    AUTHRIZATION_FAILED(122,"用户未登录"),
    ; //

    private Integer code;

    private String meesag;

    private OrzExceptionEnum(Integer code,String message){
        this.code=code;
        this.meesag=message;
    }

    public Integer getCode(){
        return code;
    }

    public String getMeesag(){
        return meesag;
    }

}

