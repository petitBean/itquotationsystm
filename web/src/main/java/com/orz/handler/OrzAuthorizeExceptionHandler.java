package com.orz.handler;

import com.orz.common.exception.OrzAuthorizeException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

/**
 * @author Wangxingze
 * @date 2019-07-08 05:33
 */
@ControllerAdvice
public class OrzAuthorizeExceptionHandler {


    //捕获BuyerAuthorizeException异常
    @ExceptionHandler(value = OrzAuthorizeException.class)
    public ModelAndView AuthorizeException(){
        Map<String,Object> map=new HashMap<>();
        map.put("msg","你还未登陆！");
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("user-login");
        return modelAndView;
    }

}
