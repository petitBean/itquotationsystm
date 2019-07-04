package com.orz.test.serviceTest;

import com.orz.bean.Product3;
import com.orz.service.Product3Service;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * @author Wangxingze
 * @date 2019-07-05 00:39
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class Product3Test {

    @Autowired
    private Product3Service product3Service;

    @Test
    public void findAll(){
        List<Product3> product3List=product3Service.findAllProduct3();
        Assert.assertEquals(1,product3List.size());
    }

}
