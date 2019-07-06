package com.orz.dao;

import com.orz.bean.Gpu;

import java.util.List;

public interface GpuDao {

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
     * 通过GPU代码查找一个
     * @param gpuCode
     * @return
     */
    Gpu findOneByGpuCode(String gpuCode);

    /**
     * 查询所有通过gpuFactory
     * @return
     */
    List<Gpu> findAllGpuBygpuFactory();

    /**
     * 查询所有通过gpuName
     * @return
     */
    List<Gpu> findAllGpuBygpuName();

    /**
     * 插入一个新Gpu
     * @param gpu
     */
    void insertOneGpu(Gpu gpu);

    /**
     * 通过Gpu名字更新Gpu信息
     * @param gpu
     */
    void updateGpuByName(Gpu gpu);

    /**
     * 通过GPUCode更新
     * @param gpu
     */
    public void updateGpuByGpuCode(Gpu gpu);


    /**
     * 通过Gpu名字删除gpu信息
     * @param gpu
     */
    void deleteGpuByName(Gpu gpu);

    /**
     * 通过Gpu代码删除
     * @param gpuCode
     */
    void deleteGpuByGpuCode(String gpuCode);

}
