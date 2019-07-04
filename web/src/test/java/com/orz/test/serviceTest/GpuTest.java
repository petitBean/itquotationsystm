package com.orz.test.serviceTest;

import com.orz.bean.Gpu;
import com.orz.service.GpuService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * @author Wangxingze
 * @date 2019-07-04 19:24
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class GpuTest {

    @Autowired
    private GpuService gpuService;


    @Test
    public void findAll(){
        List<Gpu> gpuList=gpuService.findAllGpu();
        Assert.assertEquals(1,gpuList.size());
    }

    @Test
    public void insert() throws Exception{
       Gpu gpu=new Gpu();
       gpu.setGpuCode("000002");
       gpu.setGpuFactory("英特尔");
       gpu.setGpuName("bbb");
       gpuService.insertOneGpu(gpu);
    }


}
