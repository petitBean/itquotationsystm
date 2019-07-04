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

}
