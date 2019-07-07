package com.orz.controller;

import com.orz.bean.Product1;
import com.orz.bean.Product2;
import com.orz.bean.Product3;
import com.orz.bean.Trademark;
import com.orz.common.util.AuthorUtil;
import com.orz.common.util.KeyUtil;
import com.orz.common.vo.ProductListVO;
import com.orz.common.vo.ProductP;
import com.orz.common.vo.ProductU;
import com.orz.service.*;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @author Wangxingze
 * @date 2019-07-07 20:24
 */
@Controller
@RequestMapping("")
public class AdministratorController {

    @Autowired
    private Product1Service product1Service;

    @Autowired
    private Product3Service product3Service;

    @Autowired
    private Product2Service product2Service;

    @Autowired
    private TrademarkService trademarkService;

    @Autowired
    private CommonService commonService;

    @RequestMapping("/productList.do")
    public ModelAndView productList(){
        if (AuthorUtil.getUsername()==null){
            ModelAndView modelAndView = new ModelAndView();
            modelAndView.setViewName("user-login");
            return modelAndView;
        }
        //1.查询所有p1 p2
        List<Product1> product1List = product1Service.findAllProduct1();
        //2.放到map
        Map<String,Product1> product1Map=new HashMap<>(product1List.size());
        for(Product1 product1:product1List){
            product1Map.put(product1.getpCode(),product1);
        }
        //查询所有 p3
        List<Product3> product3List=product3Service.findAllProduct3();
        //
        List<ProductListVO> productListVOList=new ArrayList<>(product3List.size());
        //对p3片姐
        for (Product3 product3:product3List){
            ProductListVO productListVO=new ProductListVO();
            BeanUtils.copyProperties(product3,productListVO);
            String key=product3.getpCode();
            if (product1Map.containsKey(key)){
                BeanUtils.copyProperties(product1Map.get(key),productListVO);
            }
            //添加
            productListVOList.add(productListVO);
        }//for

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("allProductList",productListVOList);
        modelAndView.setViewName("aProductList");
        return modelAndView;
    }

   /* @RequestMapping("/addOneProduct.do")
    public ModelAndView addOneProduct(Product1 product1, Product2 product2,Product3 product3,
                              String tmName,Integer pScreenResolution1,Integer pScreenResolution2,String CPU)
    {
        System.out.println(""+product2+""+product3);
        System.out.println(pScreenResolution1);
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("addProduct");
        return modelAndView ;

    }

*/

    /**
     * 添加产品
     * @param product1
     * @param product2
     * @param product3
     * @param tmName
     * @param pScreenResolution1
     * @param pScreenResolution2
     * @param CPU
     * @return
     */
   @RequestMapping("/addOneProduct.do")
    public ModelAndView addOneProduct(Product1 product1, Product2 product2, Product3 product3,
                        String tmName,int pScreenResolution1,int pScreenResolution2,String CPU) {


       Trademark trademark=trademarkService.findOneByName(tmName);
       if (trademark!=null){
           //p1
          Product1 newProduct1=new Product1();
          BeanUtils.copyProperties(product1,newProduct1);
          String pCode=KeyUtil.getPCodeKey();
          newProduct1.setpCode(pCode);
          newProduct1.setTmCode(trademark.getTmCode());
          product1.setpScreenResolution(pScreenResolution1*pScreenResolution2);
          //p2
           Product2 newProduct2=new Product2();
           BeanUtils.copyProperties(product2,newProduct2);
           newProduct2.setpCode(pCode);
           //
           //p3
           Product3 newProduct3=new Product3();
           BeanUtils.copyProperties(product3,newProduct3);
           newProduct3.setpCode2(KeyUtil.getPCodeKey());
           newProduct3.setpCode(pCode);
           product3.setpCPUSeries(CPU);
           try{
               commonService.saveProduct(newProduct1,newProduct2,newProduct3);
           }catch (Exception e){
               System.out.println(e.getMessage());
           }
       }
       //p2
       ModelAndView modelAndView = new ModelAndView();
       modelAndView.setViewName("redirect:/productList.do");
       return modelAndView;
    }

    /**
     * 解决日期格式转换
     * @param binder
     * @param request
     */
    @InitBinder
    public void initBinder(WebDataBinder binder, WebRequest request) {
        //转换日期 注意这里的转化要和传进来的字符串的格式一直 如2015-9-9 就应该为yyyy-MM-dd
        DateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));// CustomDateEditor为自定义日期编辑器
    }


    /**
     * 删除
     * @param pCode
     * @return
     */
    @RequestMapping("/deleteOneProduct.do")
    public ModelAndView deleteOneProduct(@RequestParam(value = "pCode")String pCode){
      try {
          commonService.deleteOneProduct(pCode);
      }catch (Exception e){
          System.out.println(e.getMessage());
      }
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:/productList.do");
        return modelAndView;
    }


    @RequestMapping("/toupdate.do")
    public ModelAndView toupdate(String pCode2){

        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("updateProduct");
        List<Product3> product3List=product3Service.findListBypCode2( pCode2);
        ProductU productU=new ProductU();
        if (product3List!=null){
            BeanUtils.copyProperties(product3List.get(0),productU);
            Product1 product1=product1Service.findOneProduct1BypCode(product3List.get(0).getpCode());
            Product2 product2=product2Service.findOneProduct2BypCode(product3List.get(0).getpCode());
            BeanUtils.copyProperties(product2,productU);
            BeanUtils.copyProperties(product1,productU);
        }
        modelAndView.addObject("productU",productU);
        return modelAndView;
    }


    /**
     * 更新
     * @param product1
     * @param product2
     * @param product3
     * @param tmName
     * @param pScreenResolution1
     * @param pScreenResolution2
     * @param CPU
     * @param pCode
     * @return
     */
    @RequestMapping("/updateProduct.do")
    public ModelAndView updateProduct(Product1 product1, Product2 product2, Product3 product3,
                              String tmName,int pScreenResolution1,int pScreenResolution2,String CPU,String pCode){
        Trademark trademark=trademarkService.findOneByName(tmName);
        if (trademark!=null){
            product1.setpCode(pCode);
            product1.setTmCode(trademark.getTmCode());
            //
            product2.setpCode(pCode);
            //
            product3.setpCode(pCode);
           List<Product3> oldProduct3=product3Service.findListBypCode(pCode);
           List<Product3> newList=new ArrayList<>();
           if (oldProduct3!=null){
              for (Product3 product31:oldProduct3){
                  product31.setpStructure(product3.getpStructure());
                  product31.setpCraft(product3.getpCraft());
                  product31.setpConsumption(product3.getpConsumption());
                  product31.setpDisk(product3.getpDisk());
                  product3.setpCPUSeries(CPU);
                  newList.add(product31);
              }
           }
           else {
               product3.setpCode2(KeyUtil.getPCodeKey());
           }
            //更新
            try {
                commonService.updateProduct(product1,product2,newList);
            }catch (Exception e){
                System.out.println(e.getMessage());
            }

        }
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:/productList.do");
        return modelAndView;
    }





}
