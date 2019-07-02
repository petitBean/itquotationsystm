package com.orz.common.util;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Cookie工具类
 * @author Wangxingze
 * @date 2019-07-02 13:12
 */
public class CookieUtil {


    /**
     * 读取所有cookie
     * @param request
     * @return
     */
    public static Map<String,Cookie> readCookie(HttpServletRequest request){
        Cookie[] cookies=request.getCookies();
        Map<String,Cookie> cookieMap=new HashMap<>(cookies.length+1);
        if (cookies==null){
            return null;
        }
        for (Cookie cookie:cookies){
            cookieMap.put(cookie.getName(),cookie);
        }
        return cookieMap;
    }


    /**
     * 查找用户的cookie
     * @param cookieName
     * @param request
     * @return
     */
    public static Cookie getCookieByName(String cookieName,HttpServletRequest request){
        //map不会为null
        Map<String,Cookie> cookieMap=readCookie(request);
        if (cookieMap.containsKey(cookieName)){
            return cookieMap.get(cookieName);
        }
        return null;
    }


    /**
     * 新建Cookie，并且添加到response
     * @param name
     * @param maxAge
     * @param path
     * @param value
     * @param response
     * @return
     */
    public static Cookie setCookie(HttpServletResponse response,String name,Integer maxAge,String path,String value){
        Cookie cookie=new Cookie(name,value);
        cookie.setPath(path);
        cookie.setMaxAge(maxAge);
        response.addCookie(cookie);
        return cookie;
    }


    /**
     * 新建Cookie，并且添加到response
     * @param name
     * @param path
     * @param value
     * @param response
     * @return
     */
    public static Cookie setCookie(HttpServletResponse response,String name,String path,String value){
        Cookie cookie=new Cookie(name,value);
        cookie.setPath(path);
        cookie.setMaxAge(60*60*2);//two  hours
        response.addCookie(cookie);
        return cookie;
    }

    /**
     * 新建Cookie，并且添加到response
     * @param name
     * @param value
     * @param response
     * @return
     */
    public static Cookie setCookie(HttpServletResponse response,String name,String value){
        Cookie cookie=new Cookie(name,value);
        cookie.setPath("/");
        cookie.setMaxAge(60*60*10);//ten  seconds
        response.addCookie(cookie);
        return cookie;
    }

    /**
     * 新建Cookie，并且添加到response
     * @param name
     * @param response
     * @return
     */
    public static Cookie setCookie(HttpServletResponse response,String name,String value,Integer maxAge){
        Cookie cookie=new Cookie(name,value);
        cookie.setPath("/");
        cookie.setMaxAge(maxAge);//ten  seconds
        response.addCookie(cookie);
        return cookie;
    }

    /**
     * 清除Cookie
     * @param response
     * @param name
     */
    public static void deleteCookie(HttpServletResponse response,String name){
        setCookie(response,name,null,0);
    }


}//class
