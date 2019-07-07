package com.orz.service.serviceImpl;

import com.orz.bean.Product1;
import com.orz.bean.Product2;
import com.orz.bean.Product3;
import com.orz.common.enums.OrzExceptionEnum;
import com.orz.common.exception.OrzException;
import com.orz.dao.Product1Dao;
import com.orz.dao.Product2Dao;
import com.orz.dao.Product3Dao;
import com.orz.service.CommonService;
import com.orz.service.Product1Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author Wangxingze
 * @date 2019-07-08 00:03
 */
@Service
public class CommonServiceImpl implements CommonService {

    @Autowired
    private Product1Dao product1Dao;

    @Autowired
    private Product2Dao product2Dao;

    @Autowired
    private Product3Dao product3Dao;


    @Transactional
    @Override
    public void saveProduct(Product1 product1, Product2 product2, Product3 product3) throws Exception{
        try {
            product1Dao.insertOneProduct1(product1);
            product2Dao.insertOneProduct2(product2);
            product3Dao.insertOneProduct3(product3);
        }catch (Exception e){
            e.printStackTrace();
            throw new OrzException(OrzExceptionEnum.INSERT_DATA_FAILED);
        }

    }

    @Override
    @Transactional
    public void deleteOneProduct(String pCode) throws Exception{
        try {
            product3Dao.deleteProduct3BypCode(pCode);
            product2Dao.deleteProduct2BypCode(pCode);
            product1Dao.deleteProduct1BypCode(pCode);
        }catch (Exception e){
            e.printStackTrace();
            throw new OrzException(OrzExceptionEnum.DELETE_DATA_FAILED);
        }
    }

    @Transactional
    @Override
    public void updateProduct(Product1 product1, Product2 product2, List<Product3> product3List) throws Exception{
        try {
            for (Product3 product3:product3List){
                product3Dao.updateProduct3BypCodeAndpCode2(product3);
            }
            product2Dao.updateProduct2BypCode(product2);
            product1Dao.updateProduct1BypCode(product1);
        }catch (Exception e){
            e.printStackTrace();
            throw new OrzException(OrzExceptionEnum.UPDATE_DATA_FAILED);
        }
    }


}
