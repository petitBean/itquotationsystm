package com.orz.common.exception;

/**
 * @author Wangxingze
 * @date 2019-07-02 10:05
 */

import com.orz.common.enums.OrzExceptionEnum;

/**
 * 定义该项目的异常
 * @author Wangxingze
 * @date 2019-07-01 15:41
 */
public class OrzException extends RuntimeException {

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
    public OrzException() {
        super();
    }

    /**
     *
     * @param exceptionEnum
     */
    public OrzException(OrzExceptionEnum exceptionEnum) {
        super();
        this.code=exceptionEnum.getCode();
        this.message=exceptionEnum.getMeesag();
    }

    @Override
    public String getMessage(){
        return "【"+this.message+"】"+":"+"\n"+super.getStackTrace();
    }

}

