package com.orz.service;

import com.orz.bean.Product3;

import java.util.List;

public interface Product3Service {


    List<Product3> findAllProduct3();

    Product3 findOneProduct3pCode2(String pCode2);

    void insertOneProduct3(Product3 product3) throws Exception;

    void updateProduct3BypCode2(Product3 product3) throws Exception;

    void updateProduct3BypCode(Product3 product3) throws Exception;

    void deleteProduct3BypCode(String pCode) throws Exception;

    void deleteProduct3BypCode2(String pCode2) throws Exception;

}
