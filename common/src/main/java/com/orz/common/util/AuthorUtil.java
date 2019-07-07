package com.orz.common.util;

import com.orz.common.enums.OrzConStrantEnum;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author Wangxingze
 * @date 2019-07-08 05:45
 */
public class AuthorUtil {

    public static String getUsername(){
        //System.out.println("验证！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！");
        ServletRequestAttributes attributes=(ServletRequestAttributes) RequestContextHolder.getRequestAttributes();//
        HttpServletRequest request=attributes.getRequest();//获取request
        //查询cookie
        HttpSession session=request.getSession();
        String cookieName=(String)session.getAttribute(OrzConStrantEnum.LOGIN_SESSION_CONSTANT.getValue());
        if (cookieName!=null){
           Cookie cookie= CookieUtil.getCookieByName(cookieName,request);
           if (cookie!=null && cookie.getValue()!=null){
               return cookie.getValue();
           }
        }
        return null;
    }

}
