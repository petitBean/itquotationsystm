package com.orz.aspect;

import com.orz.common.enums.OrzConStrantEnum;
import com.orz.common.enums.OrzExceptionEnum;
import com.orz.common.exception.OrzException;
import com.orz.common.util.CookieUtil;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author Wangxingze
 * @date 2019-07-07 21:52
 */
@Component
@Aspect
public class OrzAuthorization {


    @Pointcut("execution(public * com.orz.controller.AdministratorController*.*(..))" )
    //切入点,排除对用户操作的过滤，因为有登陆等
    //加上"&& execution(public * com.wxz.ibook.controller.OrderController*.*(..))"
    public void verify(){
    }

    //通过handler捕获异常
    @Before("verify()")
    public void doVerify(){
        System.out.println("验证！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！");
        ServletRequestAttributes attributes=(ServletRequestAttributes) RequestContextHolder.getRequestAttributes();//
        HttpServletRequest request=attributes.getRequest();//获取request
        //查询cookie
        HttpSession session=request.getSession();
        String cookieName=(String) session.getAttribute(OrzConStrantEnum.LOGIN_SESSION_CONSTANT.getValue());
        if (cookieName!=null){
            Cookie cookie= CookieUtil.getCookieByName(cookieName,request);
            if (cookie!=null && cookie.getValue()!=null){
                return;
            }
        }
        throw new OrzException(OrzExceptionEnum.AUTHRIZATION_FAILED);
    }

}
