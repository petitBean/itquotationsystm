package com.orz.service;

import com.orz.bean.Product1;
import com.orz.bean.Product2;
import com.orz.bean.Product3;
import org.springframework.stereotype.Service;

import java.util.List;


public interface CommonService {

    void saveProduct(Product1 product1, Product2 product2, Product3 product3)throws Exception;

    void deleteOneProduct(String pCode)throws Exception;

    void updateProduct(Product1 product1, Product2 product2, List<Product3> product3List)throws Exception;



}
