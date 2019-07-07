package com.orz.test.serviceTest;

import com.github.pagehelper.PageInfo;
import com.orz.bean.Evalution;
import com.orz.service.EvalutionService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.xml.crypto.Data;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @author Wangxingze
 * @date 2019-07-04 17:22
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class EvalutionTest {

    @Autowired
    private EvalutionService evalutionService;

    @Test
    public void insertOne() throws Exception{
        DateFormat dateFormat=new SimpleDateFormat("yyyy:MM:dd:hh:mm:ss");
        Evalution evalution=new Evalution();
        evalution.seteContent("sss");
        evalution.seteTime(new Date());
        evalution.setpCode("11111");
        evalution.setUserId(1);
        evalutionService.insertOneEvalution(evalution);
    }

    @Test
    public void findAll(){
        List<Evalution> evalutionList=evalutionService.findAllEvalution();
        Assert.assertEquals(1,evalutionList.size());
    }

    @Test
    public void findAllEvalutionByuserId(){
        List<Evalution> evalutionList=evalutionService.findAllEvalutionByuserId(0);
        Assert.assertEquals(1,evalutionList.size());
    }


    @Test
    public void  findOneEvalutionBypCode(){
        Evalution evalutionList=evalutionService. findOneEvalutionBypCode("1111");
        Assert.assertNotNull(evalutionList);
    }

    @Test
    public void updateEvalutionBypCode() throws Exception{
        Evalution evalutionList=evalutionService. findOneEvalutionByuserIdAndpCode(1,"11111");
        evalutionList.setOther1(10);
        evalutionService.updateEvalutionByUserIdAndpCode(evalutionList);
    }


    @Test
   public void findOnePageByHeuper(){
        List<Evalution> onePageByHeuper = evalutionService.findOnePageByHeuper(0, 2, "11111");
        PageInfo pageInfo=new PageInfo(onePageByHeuper);
        pageInfo.getPages();

    }

}
