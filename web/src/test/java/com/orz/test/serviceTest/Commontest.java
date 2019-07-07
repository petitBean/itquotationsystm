package com.orz.test.serviceTest;

import com.orz.bean.Product1;
import com.orz.bean.Product2;
import com.orz.bean.Product3;
import com.orz.dao.Product1Dao;
import com.orz.dao.Product2Dao;
import com.orz.dao.Product3Dao;
import com.orz.service.CommonService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @author Wangxingze
 * @date 2019-07-08 00:30
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class Commontest {

    @Autowired
    private CommonService commonService;
    @Autowired
    private Product3Dao product3Dao;
    @Autowired
    private Product2Dao product2Dao;
    @Autowired
    private Product1Dao product1Dao;


    @Test
    public void delete() throws Exception{
        commonService.deleteOneProduct("1111");
    }

    @Test
   public  void updateProduct()throws Exception{
        Product1 product1=product1Dao.findOneProduct1BypCode("11111");
        product1.setpName("bb");
        Product2 product2=product2Dao.findOneProduct2BypCode("11111");
        product2.setOther5("mm");
        Product3 product3=product3Dao.findListBypCode("11111").get(0);
        product2.setOther5("5");
        //commonService.updateProduct(product1,product2,product3);
    }

}
