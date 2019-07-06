package com.orz.service.serviceImpl;

import com.orz.bean.Gpu;
import com.orz.common.enums.OrzExceptionEnum;
import com.orz.common.exception.OrzException;
import com.orz.dao.GpuDao;
import com.orz.service.GpuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author Wangxingze
 * @date 2019-07-03 18:33
 */
@Service
public class GpuServiceImpl implements GpuService {

    @Autowired
    private GpuDao gpuDao;


    @Override
    public List<Gpu> findAllGpu() {
        return gpuDao.findAllGpu();
    }

    @Override
    public Gpu findOneByGpuCode(String gpuCode) {
        return gpuDao.findOneByGpuCode(gpuCode);
    }

    @Override
    public List<Gpu> findAllGpuBygpuCode() {
        return gpuDao.findAllGpuBygpuCode();
    }

    @Override
    public List<Gpu> findAllGpuBygpuFactory() {
        return gpuDao.findAllGpuBygpuFactory();
    }

    @Override
    public List<Gpu> findAllGpuBygpuName() {
        return gpuDao.findAllGpuBygpuName();
    }

    @Override
    @Transactional
    public void insertOneGpu(Gpu gpu) throws Exception {
        try{
            gpuDao.insertOneGpu(gpu);
        }
        catch (Exception e){
            e.printStackTrace();
            System.out.println(e.getCause());
            throw new OrzException(OrzExceptionEnum.UPDATE_DATA_FAILED);
        }
    }

    @Override
    @Transactional
    public void updateGpuByGpuCode(Gpu gpu)throws Exception {
        try{
            gpuDao.updateGpuByGpuCode(gpu);
        }
        catch (Exception e){
            e.printStackTrace();
            System.out.println(e.getCause());
            throw new OrzException(OrzExceptionEnum.UPDATE_DATA_FAILED);
        }
    }

    public void updateGpuByName(Gpu gpu)throws Exception {
        try{
            gpuDao.updateGpuByName(gpu);
        }
        catch (Exception e){
            e.printStackTrace();
            System.out.println(e.getCause());
            throw new OrzException(OrzExceptionEnum.UPDATE_DATA_FAILED);
        }
    }

    @Override
    @Transactional
    public void deleteGpuByName(Gpu gpu) throws Exception {
        try{
            gpuDao.deleteGpuByName(gpu);
        }
        catch (Exception e){
            e.printStackTrace();
            System.out.println(e.getCause());
            throw new OrzException(OrzExceptionEnum.DELETE_DATA_FAILED);
        }
    }

    @Override
    @Transactional
    public void deleteGpuByGpuCode(String gpuCode) {
        try{
            gpuDao.deleteGpuByGpuCode(gpuCode);
        }
        catch (Exception e){
            e.printStackTrace();
            System.out.println(e.getCause());
            throw new OrzException(OrzExceptionEnum.DELETE_DATA_FAILED);
        }
    }
}
