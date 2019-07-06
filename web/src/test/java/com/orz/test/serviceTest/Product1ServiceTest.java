package com.orz.test.serviceTest;

import com.orz.bean.Product1;
import com.orz.common.vo.IndexPageProductVO;
import com.orz.service.Product1Service;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * @author Wangxingze
 * @date 2019-07-03 18:39
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class Product1ServiceTest {

    @Autowired
    private Product1Service product1Service;

    @Test
    public void findAll(){
        List<Product1> product1List=product1Service.findAllProduct1();
        Assert.assertEquals(1,product1List.size());
    }

    @Test
    public void insert() throws Exception{
        Product1 product1=new Product1("0003","001",new Date(),"123"
                ,"hhhh","hhh","nnn"
                ,9,70,89,"aauhaah"
                ,",kkkk","aod","jjjj","jhbdj","ajdj"
                ,"afhday","ajajay","aaiaha","asdaid"
                ,"hiasdhid","gadid","haidhi"
                ,"无","无","网页","无");
        product1Service.insertOneProduct1(product1);
    }

    @Test
    public void findOneProduct1BypCode(){
       Product1 product1= product1Service.findOneProduct1BypCode("1111");
       Assert.assertNotNull(product1);
    }

    @Test
   public void updateProduct1BypCode() throws Exception{
        Product1 product1= product1Service.findOneProduct1BypCode("0001");
        product1.setOther2("p");
        product1Service.updateProduct1BypCode(product1);
   }

   @Test
    public void findOnePage(){
        List<Product1> product1List=product1Service.findOnePage(1,4);
        Assert.assertNotNull(product1List);
        Assert.assertEquals(2,product1List.size());
   }

    @Test
    public void  findOnePagepCode(){
        List<String> codeList=product1Service.findOnePagepCode(1,5);
        Assert.assertNotNull(codeList);
    }

    @Test
    public void join(){
       List<Product1> product1List= product1Service.joinFindListBypCode(Arrays.asList("1111","11111","0001"));
        Assert.assertNotNull(1);
    }

    @Test
    public void getUpProductVOList(){
        product1Service.getUpProductVOList(1,2);
    }

    @Test
    public void findProductVoListByTmCode(){
       // List<String> pCodeList=product1Service.findpCodeListByTmCodeList();
        List<IndexPageProductVO> pageProductVOS=product1Service.findProductVoListByTmCodeList(1,1,Arrays.asList("001","002"));
        Assert.assertNotNull(pageProductVOS);
    }

    @Test
    public void findProductVoListBypNameLike(){
        List<IndexPageProductVO> name = product1Service.findProductVoListBypNameLike("name");
        Assert.assertNotNull(name);
    }
}
