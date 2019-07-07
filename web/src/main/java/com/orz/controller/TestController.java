package com.orz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * @author Wangxingze
 * @date 2019-07-06 09:56
 */
@Controller
@RequestMapping(value = "")
public class TestController {

    @RequestMapping(value = "/hello.do")
    public ModelAndView hello(HttpServletRequest request){
        System.out.println("【哈哈哈哈哈哈】");
        System.out.println("re"+request.getServletContext().getContextPath());
        System.out.println("re"+request.getSession().getServletContext().getRealPath("\\img"));
        System.out.println(System.getProperty("serverDir"));
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("product");
        return modelAndView;
    }

    @RequestMapping("/cart.do")
    public String test(){
        return "productCart";
    }

}
