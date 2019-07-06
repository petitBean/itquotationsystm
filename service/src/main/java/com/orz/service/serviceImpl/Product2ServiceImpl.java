package com.orz.service.serviceImpl;

import com.orz.bean.Product2;
import com.orz.common.enums.OrzExceptionEnum;
import com.orz.common.exception.OrzException;
import com.orz.dao.Product2Dao;
import com.orz.service.Product2Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author Wangxingze
 * @date 2019-07-03 18:31
 */
@Service
public class Product2ServiceImpl implements Product2Service {

    @Autowired
    private Product2Dao product2Dao;

    @Override
    public List<Product2> findAllProduct2() {
        return product2Dao.findAllProduct2();
    }

    @Override
    public List<Product2> findListBypCodeList(List<String> pCodeList) {
        return product2Dao.findListBypCodeList(pCodeList);
    }

    @Override
    public Product2 findOneProduct2BypCode(String pCode) {
        return product2Dao.findOneProduct2BypCode(pCode);
    }

    @Override
    @Transactional
    public void insertOneProduct2(Product2 product2) throws Exception {
        try{
            product2Dao.insertOneProduct2(product2);
        }
        catch (Exception e){
            e.printStackTrace();
            System.out.println(e.getCause());
            throw new OrzException(OrzExceptionEnum.INSERT_DATA_FAILED);
        }

    }

    @Override
    @Transactional
    public void updateProduct2BypCode(Product2 product2) throws Exception{
        try{
            product2Dao.updateProduct2BypCode(product2);
        }
        catch (Exception e){
            e.printStackTrace();
            System.out.println(e.getCause());
            throw new OrzException(OrzExceptionEnum.UPDATE_DATA_FAILED);
        }
    }

    @Override
    @Transactional
    public void deleteProduct2BypCode(String pCode) throws Exception {
        try{
            product2Dao.deleteProduct2BypCode(pCode);
        }
        catch (Exception e){
            e.printStackTrace();
            System.out.println(e.getCause());
            throw new OrzException(OrzExceptionEnum.DELETE_DATA_FAILED);
        }
    }

    @Override
    public List<Product2> findAllProduct2BypCode(String pCode) {
        return null;
    }

    @Override
    public List<Product2> findAllProduct2BypFingeringEquipment() {
        return null;
    }

    @Override
    public List<Product2> findAllProduct2BypKeyboard() {
        return null;
    }

    @Override
    public List<Product2> findAllProduct2BypFingerprintIdentification() {
        return null;
    }

    @Override
    public List<Product2> findAllProduct2BypBatteryType() {
        return null;
    }

    @Override
    public List<Product2> findAllProduct2BypDuration() {
        return null;
    }

    @Override
    public List<Product2> findAllProduct2BypPowerAdapter() {
        return null;
    }

    @Override
    public List<Product2> findAllProduct2BypWeight() {
        return null;
    }

    @Override
    public List<Product2> findAllProduct2BypLengh() {
        return null;
    }

    @Override
    public List<Product2> findAllProduct2BypWidth() {
        return null;
    }

    @Override
    public List<Product2> findAllProduct2BypThickness() {
        return null;
    }

    @Override
    public List<Product2> findAllProduct2BypShellMaterial() {
        return null;
    }

    @Override
    public List<Product2> findAllProduct2BypShellDescription() {
        return null;
    }

    @Override
    public List<Product2> findAllProduct2BypSafety() {
        return null;
    }

    @Override
    public List<Product2> findAllProduct2BypDissipation() {
        return null;
    }

    @Override
    public List<Product2> findAllProduct2BypSoftware() {
        return null;
    }

    @Override
    public List<Product2> findAllProduct2BypPackagingList() {
        return null;
    }

    @Override
    public List<Product2> findAllProduct2BypGuarantee() {
        return null;
    }

    @Override
    public List<Product2> findAllProduct2BypWarranty() {
        return null;
    }

    @Override
    public List<Product2> findAllProduct2BypWarrantyRemark() {
        return null;
    }

    @Override
    public List<Product2> findAllProduct2BypTel() {
        return null;
    }

    @Override
    public List<Product2> findAllProduct2BypTelRemark() {
        return null;
    }

    @Override
    public List<Product2> findAllProduct2BypDatail() {
        return null;
    }

    @Override
    public List<Product2> findAllProduct2BypPicture() {
        return null;
    }

}
