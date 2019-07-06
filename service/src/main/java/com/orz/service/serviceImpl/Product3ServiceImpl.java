package com.orz.service.serviceImpl;

import com.orz.bean.Product3;
import com.orz.common.enums.OrzExceptionEnum;
import com.orz.common.exception.OrzException;
import com.orz.dao.Product3Dao;
import com.orz.service.Product3Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author Wangxingze
 * @date 2019-07-03 18:32
 */
@Service
public class Product3ServiceImpl implements Product3Service {

    @Autowired
    private Product3Dao product3Dao;

    @Override
    public List<Product3> findAllProduct3() {
        return product3Dao.findAllProduct3();
    }

    @Override
    @Transactional
    public void insertOneProduct3(Product3 product3) throws Exception {
        try {
            product3Dao.insertOneProduct3(product3);
        }catch (Exception e){
            e.printStackTrace();
            System.out.println(e.getCause());
            throw new OrzException(OrzExceptionEnum.INSERT_DATA_FAILED);
        }
    }

    @Override
    public void updateProduct3BypCode2(Product3 product3)  throws Exception{
         //TODO
    }

    @Override
    @Transactional
    public void updateProduct3BypCode(Product3 product3) throws Exception {

        try {
            product3Dao.updateProduct3BypCode(product3);
        }catch (Exception e){
            e.printStackTrace();
            System.out.println(e.getCause());
            throw new OrzException(OrzExceptionEnum.UPDATE_DATA_FAILED);
        }
    }

    @Override
    @Transactional
    public void deleteProduct3BypCode(String pCode) throws Exception {
        try {
            product3Dao.deleteProduct3BypCode(pCode);
        }
        catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getCause());
            throw new OrzException(OrzExceptionEnum.DELETE_DATA_FAILED);
        }
    }


    /**
     * 通过主键查找
     * @param pCode2
     * @return
     */
    @Override
    public Product3 findOneProduct3BypCode2AndpCode(String pCode,String pCode2){
        return product3Dao.findOneProduct3BypCode2AndpCode( pCode,pCode2);
    }

    @Override
    @Transactional
    public void updateProduct3BypCodeAndpCode2(Product3 product3) throws Exception {
        try {
            product3Dao.updateProduct3BypCodeAndpCode2(product3);
        }
        catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getCause());
            throw new OrzException(OrzExceptionEnum.UPDATE_DATA_FAILED);
        }
    }

    @Override
    @Transactional
    public void deleteProduct3BypCodeAndpCode2(String pCode, String pCode2) throws Exception {
        try {
            product3Dao.deleteProduct3BypCodeAndpCode2(pCode,pCode2);
        }
        catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getCause());
            throw new OrzException(OrzExceptionEnum.DELETE_DATA_FAILED);
        }
    }

}
