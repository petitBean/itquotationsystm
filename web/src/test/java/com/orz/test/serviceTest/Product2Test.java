package com.orz.test.serviceTest;

import com.orz.bean.Product2;
import com.orz.dao.Product2Dao;
import com.orz.service.Product2Service;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * @author Wangxingze
 * @date 2019-07-05 00:06
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class Product2Test {

    @Autowired
    private Product2Service product2Service;

    @Test
    public void findAll(){
        List<Product2> product2List=product2Service.findAllProduct2();
        Assert.assertEquals(1,product2List.size());
    }

    //TODO
    @Test
    public void insert() throws Exception{
        Product2 product2=new Product2("1111","aajca",
                "ajdga",1,"jjhfd",
                "gjgjj","gjgdddg"
        ,12,67,768,89,"jlj",
                "hhooo","iyii","hhhh",
                "gghjjj","yuuiii","uuieee",
                12.8,"iiii","2345678"
        ,"hfhfhfhfh","huuuiii","jjiiii","u",
                "k","k","","");
        product2Service.insertOneProduct2(product2);
    }
}
