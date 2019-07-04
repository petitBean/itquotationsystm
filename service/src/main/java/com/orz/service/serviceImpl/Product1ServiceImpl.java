package com.orz.service.serviceImpl;

import com.orz.bean.Product1;
import com.orz.common.enums.OrzExceptionEnum;
import com.orz.common.exception.OrzException;
import com.orz.dao.Product1Dao;
import com.orz.service.Product1Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author Wangxingze
 * @date 2019-07-03 18:31
 */
@Service
public class Product1ServiceImpl implements Product1Service {

    @Autowired
    private Product1Dao product1Dao;

    //查询所有
    @Override
    public  List<Product1> findAllProduct1(){
        return product1Dao.findAllProduct1();
    }

    /**
     * 插入一个新Product1
     * @param product1
     */
    @Override
    @Transactional
    public  void insertOneProduct1(Product1 product1) throws Exception{
        try{
            product1Dao.insertOneProduct1(product1);
        }
        catch (Exception e){
            e.printStackTrace();
            System.out.println(e.getCause());
            throw new OrzException(OrzExceptionEnum.INSERT_DATA_FAILED);
        }
    }
}
