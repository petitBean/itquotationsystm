package com.orz.service;

import com.orz.bean.Gpu;

import java.util.List;

/**
 * @author Wangxingze
 * @date 2019-07-03 18:33
 */
public interface GpuService {

    /**
     * 查询所有
     * @return
     */
    List<Gpu> findAllGpu();

    /**
     * 查询所有通过gpuCode
     * @return
     */
    List<Gpu> findAllGpuBygpuCode();

    /**
     * 查询所有通过gpuFactory
     * @return
     */
    List<Gpu>findAllGpuBygpuFactory();

    /**
     * 查询所有通过gpuName
     * @return
     */
    List<Gpu>findAllGpuBygpuName();


    /**
     * 插入一个新Gpu
     * @param gpu
     */
    void insertOneGpu(Gpu gpu)throws Exception ;

    /**
     * 通过Gpu名字更新Gpu信息
     * @param gpu
     */
    void updateGpuByName(Gpu gpu)throws Exception ;


    /**
     * 通过Gpu名字删除gpu信息
     * @param gpu
     */
    void deleteGpuByName(Gpu gpu)throws Exception ;

}
