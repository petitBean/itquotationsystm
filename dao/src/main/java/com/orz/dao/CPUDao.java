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


    //通过编号查询一个CPU
    CPU findOneCPUByCPUCode(String CPUCode);

    List<CPU> findAllCPUByCPUFactory(String CPUFactory);

    List<CPU> findAllCPUByCPUSeries(String CPUSeries);

    CPU findOneCPUByCPUi(String CPUi);

    CPU findOneCPUByCPUGenerationn(Integer CPUGenerationn);


    void insertOneCPU(CPU CPU);

    void updateCPUByCode(CPU CPU);




}

