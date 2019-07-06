package com.orz.test.serviceTest;

import com.orz.bean.CPU;
import com.orz.service.CPUService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * @author Wangxingze
 * @date 2019-07-04 16:44
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class CPUTest {

    @Autowired
    private CPUService CPUService;

    @Test
    public void insertTest() throws Exception{
        CPU CPU=new CPU();
        CPU.setCPUCode("00001");
        CPU.setCPUFactory("高通");
        CPU.setCPUGenerationn(1);
        CPU.setCPUi("i5");
        CPU.setCPUSeries("intel core");
        CPUService.insertOneCPU(CPU);
    }

    @Test
    public void findAll(){
        List<CPU> cpuList=CPUService.findAll();
        Assert.assertEquals(1,cpuList.size());
    }

    @Test
    public void findByCode(){
        CPU cpu=CPUService.findOneCPUByCPUCode("00001");
        Assert.assertNotNull(cpu);
    }

    @Test
    public void upDate() throws Exception{
        CPU cpu=CPUService.findOneCPUByCPUCode("00001");
        cpu.setCPUFactory("mmmmmmmmmm");
        CPUService.updateCPUByCode(cpu);
    }

}
