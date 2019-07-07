package com.orz.controller;

import com.github.pagehelper.PageInfo;
import com.orz.bean.Evalution;
import com.orz.common.constrant.OrzViewNameContrant;
import com.orz.common.enums.OrzConStrantEnum;
import com.orz.common.util.CookieUtil;
import com.orz.service.EvalutionService;
import com.orz.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

/**
 * 评论
 * @author Wangxingze
 * @date 2019-07-07 13:04
 */
@Controller
@RequestMapping("")
public class EvalutionContrller {

    @Autowired
    private EvalutionService evalutionService;

    @Autowired
    private UserService userService;

    @RequestMapping("/getOneEvalutionPage.do")
    public void getOneEvalutionPage(@RequestParam(value = "pageNum",defaultValue = "1") Integer pageNum,
                                    @RequestParam(value = "pageSize",defaultValue = "3")Integer pageSize){

        List<Evalution> evalutionList=evalutionService.findOnePageByHeuper(pageNum,pageSize,"");
        PageInfo pageInfo=new PageInfo(evalutionList);

    }

    /**
     * 添加评论
     * @param eContent
     * @param pCode
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/addOneEvation")
    public ModelAndView addOneEvalution(@RequestParam(value = "eContent",defaultValue = " ") String eContent,
                                        @RequestParam(value = "pCode",required = true) String pCode,
                                        @RequestParam(value = "rating",defaultValue = "5") float rating,
                                        HttpServletRequest request, HttpServletResponse response){
        System.out.println("【hhhh】"+pCode+rating+eContent);
        ModelAndView modelAndView=new ModelAndView();
        HttpSession session=request.getSession();

        if (eContent==null || session==null){
            modelAndView.setViewName("redirect:/OneProductInfo.do?pCode="+pCode);
            return modelAndView;
        }
        String cookieName=(String)session.getAttribute(OrzConStrantEnum.LOGIN_SESSION_CONSTANT.getValue());
        System.out.println("【CookieName】"+cookieName);
        Cookie cookie= CookieUtil.getCookieByName(cookieName,request);
        if (cookie==null){
            modelAndView.setViewName("redirect:/OneProductInfo.do?pCode="+pCode);
            return modelAndView;
        }
        String userName=cookie.getValue();
        Integer userId=userService.findOneUserByUserName(userName).getUserId();
        System.out.println("【USERID】"+userId);
        //
        Evalution evalution=new Evalution();
        evalution.seteContent(eContent);
        evalution.setpCode(pCode);
        evalution.setUserId(userId);
        evalution.seteTime(new Date());
        //
        evalution.setOther1(rating);
        Evalution test=evalutionService.findOneEvalutionByuserIdAndpCode(userId,pCode);
        if (test!=null){
            //更新
            try{
                evalutionService.updateEvalutionByUserIdAndpCode(evalution);
            }
            catch (Exception e){
                System.out.println(e.getMessage());
            }
        }
        else {
            //save
            try{
                evalutionService.insertOneEvalution(evalution);
            }
            catch (Exception e){
                System.out.println(e.getMessage());
            }
        }
        modelAndView.setViewName("redirect:/OneProductInfo.do?pCode="+pCode);
        return modelAndView;
    }



}
