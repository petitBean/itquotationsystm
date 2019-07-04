package com.orz.controller;

import com.orz.bean.User;
import com.orz.common.constrant.OrzViewNameContrant;
import com.orz.common.enums.OrzConStrantEnum;
import com.orz.common.form.UserForm;
import com.orz.common.util.CookieUtil;
import com.orz.common.util.KeyUtil;
import com.orz.common.util.UserInfoConfirmUtil;
import com.orz.service.UserService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

/**
 * @author Wangxingze
 * @date 2019-07-02 12:40
 */
@Controller
@RequestMapping(value = "/")
public class UserController {

    @Autowired
    private UserService  userService;

    /**
     * 用户登录
     * @param loginUserForm
     * @param request
     */
    @RequestMapping(value = "/login.do")
    public ModelAndView login(@Valid UserForm loginUserForm,
                              HttpServletRequest request, HttpServletResponse response){

        System.out.println("【开始登陆】");
        ModelAndView modelAndView=new ModelAndView();
        //1.验证输入
        try{
            UserInfoConfirmUtil.detectedNull(loginUserForm);
        }
        catch (Exception e){
            //用户信息错误时返回登录界面
            String message=e.getMessage();//错误时返回的信息，登录成功时不用
            System.out.println(e.getMessage());
            modelAndView.setViewName(OrzViewNameContrant.userLoginPage);
            modelAndView.addObject("message",message);
            return modelAndView;
        }
        //2，查询用户
        User user=userService.findOneUserByUserName(loginUserForm.getUserName());
        if (user==null){
            //用户不存在，跳转注册界面
            System.out.println("【用户名错误】");
            modelAndView.setViewName(OrzViewNameContrant.userLoginPage);
            modelAndView.addObject("message","用户不存在，请注册！");
            return modelAndView;
        }
        //获取session
        HttpSession session=request.getSession();
        //验证用户是否已经登录
        String lastCookieName=(String)session.getAttribute(OrzConStrantEnum.LOGIN_SESSION_CONSTANT.getValue());
        if (lastCookieName!=null &&lastCookieName!=""){
            //已经存在
            //比较用户名
            String userNameInCookie=(CookieUtil.getCookieByName(lastCookieName,request)).getValue();
            if (userNameInCookie.equals(loginUserForm.getUserName())){
                //用户名一致
                //跳转主页
                modelAndView.setViewName(OrzViewNameContrant.mainPage);
                return modelAndView;
            }
        }
        if (user.getUserPsw().equals(loginUserForm.getUserPsw())){
            System.out.println("【用户登录成功】");
            //验证通过
            //设置cookie名称
            String cookieName= KeyUtil.getUniqueKey();
            session.setAttribute(OrzConStrantEnum.LOGIN_SESSION_CONSTANT.getValue(),cookieName);
           System.out.println("【用户登录Cookie】"+ session.getAttribute(OrzConStrantEnum.LOGIN_SESSION_CONSTANT.getValue()));
            //有效时间
            session.setMaxInactiveInterval(60*60*60*2);
            //保存用户名到cookie
            CookieUtil.setCookie(response,cookieName,loginUserForm.getUserName());
            //跳转主页
            modelAndView.setViewName(OrzViewNameContrant.mainPage);
            return modelAndView;
        }
        else {
            //密码错误,跳转登录界面
            System.out.println("【用户密码错误】");
            modelAndView.setViewName(OrzViewNameContrant.userLoginPage);
            modelAndView.addObject("message","密码不正确！");
            return modelAndView;
        }


    }

    @RequestMapping(value = "/toLogin.do")
    public String  toLogin(){
        return "login";
    }

    @RequestMapping(value = "/toRegister.do")
    public String  toRegister(){
        return "loginAndRegister";
    }

    /**
     * 用户退出登录
     * @return
     */
    @RequestMapping(value = "/logout.do")
    public ModelAndView logout(HttpServletRequest request,HttpServletResponse response){
        ModelAndView modelAndView=new ModelAndView();
        //跳转路径为首页
        modelAndView.setViewName(OrzViewNameContrant.mainPage);
       //获取session中的值
        HttpSession session=request.getSession();
        String cookieName=(String)session.getAttribute(OrzConStrantEnum.LOGIN_SESSION_CONSTANT.getValue());
        System.out.println("Cookie:"+cookieName);
        if(cookieName==null||cookieName==""){
            session.setMaxInactiveInterval(0);
            return modelAndView;
        }
        //删除cookie
        CookieUtil.deleteCookie(response,cookieName);
        //删除session中cookie的name
        session.removeAttribute(OrzConStrantEnum.LOGIN_SESSION_CONSTANT.getValue());
        session.setMaxInactiveInterval(0);
        return modelAndView;
    }

    /**
     * 用户注册
     * @param userForm
     * @return
     */
    @RequestMapping("/register.do")
    public ModelAndView register(@Valid UserForm userForm){

        ModelAndView modelAndView=new ModelAndView();
        //1.验证数据格式(jsp验证密码是否一致)
        try{
            UserInfoConfirmUtil.detectedAll(userForm);
        }
        catch (Exception e){
            System.out.println(e.getMessage());
            modelAndView.addObject("message",e.getMessage());
            //跳转注册页
            modelAndView.setViewName(OrzViewNameContrant.userRegisterPage);
            return modelAndView;
        }
        //2.验证用户名是否已经存在
        User user=userService.findOneUserByUserName(userForm.getUserName());
        //已经存在
        if (user!=null){
            System.out.println("该用户已经存在");
            modelAndView.addObject("message","该用户已经存在！");
            //跳转注册页
            modelAndView.setViewName(OrzViewNameContrant.userRegisterPage);
            return modelAndView;
        }
        //3,生成新用户
        User newUser=new User();
        BeanUtils.copyProperties(userForm,newUser);
        //4.存储用户信息
        try{
            userService.insertOneUser(newUser);
        }
        catch (Exception e){
            System.out.println(e.getMessage());
            e.printStackTrace();
            //注册失败，跳转注册页面
            modelAndView.setViewName(OrzViewNameContrant.userRegisterPage);
            modelAndView.addObject("message","用户注册失败，请重试！");
            return modelAndView;
        }
        //注册成功跳转登录页面
        modelAndView.setViewName(OrzViewNameContrant.userLoginPage);
        return modelAndView;
    }

}
