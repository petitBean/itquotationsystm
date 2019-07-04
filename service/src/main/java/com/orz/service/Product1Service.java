package com.orz.service;

import com.orz.bean.Product1;

import java.util.List;

public interface Product1Service {

    //查询所有
    List<Product1> findAllProduct1();

    /**
     * 插入一个新Product1
     * @param product1
     */
    void insertOneProduct1(Product1 product1)throws Exception;
}
