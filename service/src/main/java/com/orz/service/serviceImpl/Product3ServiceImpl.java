package com.orz.service.serviceImpl;

import com.orz.bean.Product3;
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
    public Product3 findOneProduct3pCode2(String pCode2) {
        return null;
    }

    @Override
    public void insertOneProduct3(Product3 product3) throws Exception {

    }

    @Override
    public void updateProduct3BypCode2(Product3 product3)  throws Exception{

    }

    @Override
    public void updateProduct3BypCode(Product3 product3) throws Exception {

    }

    @Override
    @ 23还未实现插入
    public void deleteProduct3BypCode(String pCode) throws Exception {

    }

    @Override
    @Transactional
    public void deleteProduct3BypCode2(String pCode2) throws Exception {

    }
}
