package com.orz.dao;

import com.orz.bean.CPU;

import java.util.List;

/**
 * CPU实体DAO
 */
public interface CPUDao {

    /**
     * 查询所有CPU
     * @return
     */
    List<CPU> findAll();

    /**
     * 插入同一条记录
     * @param CPU
     */
    void insertOneCPU(CPU CPU);

    /**
     * 根据代码更新
     * @param CPU
     */
    void updateCPUByCode(CPU CPU);

    /**
     * 通过Cpu代码删除
     * @param CPUCode
     */
    void deleteByCPUCode(String CPUCode);

    /**
     *     通过编号查询一个CPU
     * @param CPUCode
     * @return
     */
    CPU findOneCPUByCPUCode(String CPUCode);

    List<CPU> findAllCPUByCPUFactory(String CPUFactory);

    List<CPU> findAllCPUByCPUSeries(String CPUSeries);

    CPU findOneCPUByCPUi(String CPUi);

    CPU findOneCPUByCPUGenerationn(Integer CPUGenerationn);



}

