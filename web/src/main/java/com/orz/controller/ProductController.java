package com.orz.controller;

import com.github.pagehelper.PageInfo;
import com.orz.bean.*;
import com.orz.common.constrant.OrzViewNameContrant;
import com.orz.common.util.FileUtil;
import com.orz.common.vo.IndexPageProductVO;
import com.orz.common.vo.ProductP;
import com.orz.service.*;
import org.springframework.beans.BeanUtils;
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

    @Autowired
    private GpuService gpuService;

    @Autowired
    private CPUService cpuService;

    @Autowired
    private Product3Service product3Service;

    @Autowired
    private Product2Service product2Service;

    @Autowired
    private EvalutionService evalutionService;

    @RequestMapping(value = "/findListByTmCode.do")
    public ModelAndView findProductVoListByTmCode(@RequestParam(value = "tmCode",defaultValue = "0") String tmCode,
                                                  @RequestParam(value = "pageNum",defaultValue = "1") Integer pageNum ,
                                                  @RequestParam(value = "pageSize",defaultValue = "5") Integer pageSize,
                                                  HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("store");

        List<String> tmCodeList=trademarkService.findTmCodeListByTmNameList(Arrays.asList(tmCode));
        List<IndexPageProductVO> productVoList =null;
        productVoList=product1Service.findProductVoListByTmCodeList(pageNum, pageSize,tmCodeList );

        PageInfo pageInfo=new PageInfo(productVoList);
        modelAndView.addObject("pageInfo",pageInfo);
        modelAndView.addObject("tmCode",tmCode);
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


    @RequestMapping("/OneProductInfo.do")
    public ModelAndView OneProductInfo(@RequestParam(value = "pCode")String pCode,
                                       @RequestParam(value = "pageNum",defaultValue = "1") Integer pageNum,
                                       @RequestParam(value = "pageSize",defaultValue = "3")Integer pageSize){

        List<IndexPageProductVO> indexPageProductVOList=product1Service.findIndexPageProductListBypCodeList(Arrays.asList(pCode));
        Product3 product3=product3Service.findListBypCode(pCode).get(0);
        Product1 product1=product1Service.findOneProduct1BypCode(pCode);
        String cpuCode=product3.getCPUCode();
        String gpuCode=product3.getGPUCode();
        CPU cpu=cpuService.findOneCPUByCPUCode(cpuCode);
        Gpu gpu=gpuService.findOneByGpuCode(gpuCode);
        ModelAndView modelAndView=new ModelAndView();
        //modelAndView.setViewName("product");
        modelAndView.setViewName("product");
        modelAndView.addObject("product",indexPageProductVOList.get(0));
        modelAndView.addObject("cpu",cpu);
        modelAndView.addObject("gpu",gpu);
        modelAndView.addObject("product1",product1);
        modelAndView.addObject("product3",product3);
        //detail
        List<Product3> product3List=product3Service.findListBypCode(pCode);
        Product2 product2=product2Service.findOneProduct2BypCode(pCode);
        ProductP productP=new ProductP();
        BeanUtils.copyProperties(product2,productP);
        BeanUtils.copyProperties(product1,productP);
        //detaile
        modelAndView.addObject("productListP",product3List);
        modelAndView.addObject("productP",productP);

        //evalution
        List<Evalution> evalutionList=evalutionService.findOnePageByHeuper(pageNum,pageSize,pCode);
        PageInfo pageInfo=new PageInfo(evalutionList);
        modelAndView.addObject("pageInfo",pageInfo);

        return modelAndView;
    }


}//controller
