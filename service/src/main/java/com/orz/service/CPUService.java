package com.orz.service;

import com.orz.bean.CPU;

import java.util.List;

public interface CPUService {

    /**
     * 查询所有CPU
     * @return
     */
    List<CPU> findAll();

    /**
     * 插入一个CPU
     * @param CPU
     */
    void insertOneCPU(CPU CPU)throws Exception ;
    //通过编号查询一个CPU
    CPU findOneCPUByCPUCode(String CPUCode);

    /**
     *
     * @param CPUFactory
     * @return
     */
    List<CPU> findAllCPUByCPUFactory(String CPUFactory);

    /**
     *
     * @param CPUSeries
     * @return
     */
    List<CPU> findAllCPUByCPUSeries(String CPUSeries);

    /**
     *
     * @param CPUi
     * @return
     */
    CPU findOneCPUByCPUi(String CPUi);

    /**
     *
     * @param CPUGenerationn
     * @return
     */
    CPU findOneCPUByCPUGenerationn(Integer CPUGenerationn);

    /**
     *
     * @param CPU
     */
    void updateCPUByCode(CPU CPU)throws Exception;

}
