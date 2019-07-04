package com.orz.test.serviceTest;

import com.orz.bean.Product1;
import com.orz.service.Product1Service;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

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
        Product1 product1=new Product1("1111","001",new Date(),"123"
                ,"hhhh","hhh","nnn"
                ,9,70,89,"aauhaah"
                ,",kkkk","aod","jjjj","jhbdj","ajdj"
                ,"afhday","ajajay","aaiaha","asdaid"
                ,"hiasdhid","gadid","haidhi"
                ,"无","无","网页","无");
        product1Service.insertOneProduct1(product1);
    }

}
