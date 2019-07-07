package com.orz.test.daoTest;

import com.orz.bean.Product1;
import com.orz.dao.Product1Dao;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Arrays;
import java.util.List;

/**
 * @author Wangxingze
 * @date 2019-07-05 18:47
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class Product1Test {

    @Autowired
    private Product1Dao product1Dao;

    @Test
    public void findProductVoListByPosition(){
       // List<Product1> product1List=product1Dao.findProductVoListByPosition("0001");
        List<String> codeListByPosition = product1Dao.findCodeListByPosition("0001");
        return;
    }

    @Test
    public void join(){
       List<Product1> product1List= product1Dao.joinFindListBypCode(Arrays.asList("1111","11111","0001","0002","0003"));
        Assert.assertNotNull(product1List);
    }

    @Test
    public void  findOnePagepCode(){
        List<String> codeList=product1Dao.findOnePagepCode(1,5);
        Assert.assertNotNull(codeList);
    }

    @Test
   public void findpCodeListByTmCodeList(){
       List<String> list= product1Dao.findpCodeListByTmCodeList(Arrays.asList("001","002"));
       Assert.assertNotNull(list);
   }

   @Test
    public void findpCodeListBypNameLike(){
        List<String> pCodeList=product1Dao.findpCodeListBypNameLike("%name%");
        Assert.assertNotNull(pCodeList);
    }

}
