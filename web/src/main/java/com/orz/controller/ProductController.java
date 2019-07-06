package com.orz.controller;

import com.orz.common.constrant.OrzViewNameContrant;
import com.orz.common.util.FileUtil;
import com.orz.common.vo.IndexPageProductVO;
import com.orz.service.Product1Service;
import com.orz.service.TrademarkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.Arrays;
import java.util.List;

/**
 * @author Wangxingze
 * @date 2019-07-05 16:03
 */
@Controller
@RequestMapping(value = "")
public class ProductController {

    @Autowired
    private Product1Service product1Service;

    @Autowired
    private TrademarkService trademarkService;

    @RequestMapping(value = "/findListByTmCode.do")
    public ModelAndView findProductVoListByTmCode(@RequestParam(value = "tmCode",defaultValue = "联想") String tmCode,
                                                  HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("store");

        List<String> tmCodeList=trademarkService.findTmCodeListByTmNameList(Arrays.asList(tmCode));
        List<IndexPageProductVO> productVoList =null;
        productVoList=product1Service.findProductVoListByTmCodeList(0, 0,tmCodeList );
        modelAndView.addObject("resultVOList",productVoList);
        System.out.println("bbbbbbbbbbbbbbbbbb："+tmCode);
        return modelAndView;

    }


    @RequestMapping(value = "/searcheProductListByKeyWord.do")
    public ModelAndView searcheProductListByKeyWord(@RequestParam(value = "keyword",defaultValue = "") String keyword){
       List<IndexPageProductVO> resultVOList=product1Service.findProductVoListBypNameLike(keyword);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("store");
        modelAndView.addObject("resultVOList",resultVOList);
        return modelAndView;
    }

    /**
     * 获取首页数据后跳转首页
     * @param page
     * @param pageSize
     * @return
     */
    @RequestMapping(value = "/mainPagelist.do")
    public ModelAndView mainPagelist(@RequestParam(value = "page",defaultValue = "1") Integer page,
                                     @RequestParam(value = "pageSize",defaultValue = "3")Integer pageSize ){

       //查询顶部数据
       List<IndexPageProductVO> indexPageProductVOList_Up =product1Service.getUpProductVOList(page,pageSize);
       //查询底部
        List<IndexPageProductVO> indexPageProductVOList_Down1 =product1Service.getUpProductVOList(page+1,pageSize);
        List<IndexPageProductVO> indexPageProductVOList_Down2 =product1Service.getUpProductVOList(page+1,pageSize);
        List<IndexPageProductVO> indexPageProductVOList_Down3 =product1Service.getUpProductVOList(page+1,pageSize);

        ModelAndView modelAndView=new ModelAndView();
        //跳转首页
        modelAndView.setViewName(OrzViewNameContrant.mainPage);
        //添加数据
        modelAndView.addObject("upList",indexPageProductVOList_Up);
        modelAndView.addObject("downList1",indexPageProductVOList_Down1);
        modelAndView.addObject("downList2",indexPageProductVOList_Down2);
        modelAndView.addObject("downList3",indexPageProductVOList_Down3);
        return modelAndView;
    }//


    @RequestMapping("/uploadFile.do")
    public ModelAndView uploadFile(@RequestPart(value = "file") MultipartFile file,
                                   HttpServletRequest request){
        //上传图片
        String path=request.getSession().getServletContext().getRealPath("\\img");
        ModelAndView modelAndView=new ModelAndView();
        try {
          String fileName=FileUtil.uploadFile(file,path);
        }
        catch (Exception e){
            System.out.println(e.getCause());
            //TODO 带上失败信息跳转到上传页面
        }
        //TODO 带上成功信息跳转到主页
        modelAndView.setViewName("redirect:/mainPagelist");
       // modelAndView.addObject("message","添加成功");
        return modelAndView;
    }


}//controller
