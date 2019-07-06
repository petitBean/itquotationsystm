package com.orz.test.daoTest;

import com.orz.dao.TrademarkDao;
import com.orz.service.TrademarkService;
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
 * @date 2019-07-06 22:16
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class TmTest {
    @Autowired
    private TrademarkDao trademarkDao;

    @Test
    public void  findTmCodeListByTmNameList(){
        List<String> tmCodeListByTmNameList = trademarkDao.findTmCodeListByTmNameList(Arrays.asList("苹果", "惠普"));
        Assert.assertNotNull(tmCodeListByTmNameList);
    }
}
