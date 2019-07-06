package com.orz.test.serviceTest;

import com.orz.bean.Trademark;
import com.orz.service.TrademarkService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * @author Wangxingze
 * @date 2019-07-04 22:47
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class TreadmarkTest {

    @Autowired
    private TrademarkService trademarkService;

    @Test
    public void insert() throws Exception{
        Trademark trademark=new Trademark();
        trademark.setTmCode("002");
        trademark.setTmName("xxxx");
        trademark.setTmTel("13720131233");
        trademark.setTmWeb("www.xxjaxbajxbaacbaa");
        trademarkService.insertOneTrademark(trademark);
    }

    @Test
    public void findAll(){
        List<Trademark> trademarkList=trademarkService.findAllTrademark();
        Assert.assertEquals(2,trademarkList.size());
    }

}
