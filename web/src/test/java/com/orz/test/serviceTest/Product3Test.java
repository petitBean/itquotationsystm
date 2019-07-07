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

    @Test
    public void insert()throws Exception{
        Product3 product3=new Product3("0004","0002","00001","00001","gagga","nkdkk","nqqq",12
        ,"ndjdn",12.9,1.22,3,4,5,"qwsq","qqq",34,23,12,56,"www"
                ,45,35,"dddddd","swsw",34,"wwss",35,87,123,
                "ff",",","","","fff","","ff","","");
        product3Service.insertOneProduct3(product3);
    }


    @Test
    public void  findAnd(){
        Product3 product3=product3Service.findOneProduct3BypCode2AndpCode("1111","0001");
        Assert.assertNotNull(product3);
    }


    @Test
    public void updateAnd() throws Exception{
        Product3 product3=product3Service.findOneProduct3BypCode2AndpCode("1111","0001");
        product3.setOther2("up");
        product3Service.updateProduct3BypCodeAndpCode2(product3);
    }



    @Test
    public void findOneBypCode() {
       Product3 product3=  product3Service.findOneBypCode("11111");
       return;
    }

    @Test
 public void findListBypCode(){
     List<Product3> listBypCode = product3Service.findListBypCode("11111");
     return;
 }



}
