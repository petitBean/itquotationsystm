package com.orz.common.exception;

import com.orz.common.enums.OrzExceptionEnum;

/**
 * @author Wangxingze
 * @date 2019-07-08 05:34
 */
public class OrzAuthorizeException extends RuntimeException {
    /**
     * 异常代码
     */
    private Integer code;

    /**
     * 异常说明
     */
    private String message;

    /**
     * 无参构造
     */
    public OrzAuthorizeException() {
        super();
    }

    /**
     *
     * @param exceptionEnum
     */
    public OrzAuthorizeException(OrzExceptionEnum exceptionEnum) {
        super();
        this.code=exceptionEnum.getCode();
        this.message=exceptionEnum.getMeesag();
    }

    @Override
    public String getMessage(){
        return "【"+this.message+"】"+":"+"\n"+super.getStackTrace();
    }

}
