package com.orz.service;

import com.orz.bean.Product3;

import java.util.List;

public interface Product3Service {


    /**
     * 查询所有
     * @param
     * @return
     */
    List<Product3> findAllProduct3();

    List<Product3> findListBypCode(String pCode);

    List<Product3> findListBypCode2(String pCode2);


    /**
     * 通过主键查找
     * @param pCode2
     * @return
     */
    Product3 findOneProduct3BypCode2AndpCode(String pCode,String pCode2);

    /**
     * 插入一个
     * @param product3
     */
    void insertOneProduct3(Product3 product3)throws Exception;

    /**
     * 根主键更新
     * @param product3
     */
    void updateProduct3BypCodeAndpCode2(Product3 product3) throws Exception;

    /**
     * 根据code更新
     * @param product3
     */
    void updateProduct3BypCode(Product3 product3)throws Exception;

    Product3 findOneBypCode(String pCode);

    /**
     * 根据code2更新
     * @param product3
     */
    void updateProduct3BypCode2(Product3 product3)throws Exception;

    /**
     * 根据主键删除
     * @param pCode2
     */
    void deleteProduct3BypCodeAndpCode2(String pCode,String pCode2)throws Exception;

    /**
     * 根据pCode删除
     * @param pCode
     */
    void deleteProduct3BypCode(String pCode)throws Exception;

}
