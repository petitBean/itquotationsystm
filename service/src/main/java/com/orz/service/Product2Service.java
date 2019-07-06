package com.orz.service;

import com.orz.bean.Product2;

import java.util.List;

public interface Product2Service {


    /**
     * 查询所有
     * @return
     */
    List<Product2> findAllProduct2();

    /**
     * 查询所有通过pCode
     * @return
     */
    List<Product2> findAllProduct2BypCode(String pCode);

    /**
     * 查询所有通过pFingeringEquipment
     * @return
     */
    List<Product2> findAllProduct2BypFingeringEquipment();


    /**
     * 查询所有通过pKeyboard
     * @return
     */
    List<Product2> findAllProduct2BypKeyboard();

    /**
     * 通过多个pCodec查询多个produt2
     * @param pCodeList
     * @return
     */
    List<Product2> findListBypCodeList(List<String> pCodeList);


    /**
     * 查询所有通过pFingerprintIdentification
     * @return
     */
    List<Product2> findAllProduct2BypFingerprintIdentification();

    /**
     * 查询所有通过pBatteryType
     * @return
     */
    List<Product2> findAllProduct2BypBatteryType();

    /**
     * 查询所有通过pDuration
     * @return
     */
    List<Product2> findAllProduct2BypDuration();

    /**
     * 查询所有通过pPowerAdapter
     * @return
     */
    List<Product2> findAllProduct2BypPowerAdapter();

    /**
     * 查询所有通过pWeight
     * @return
     */
    List<Product2> findAllProduct2BypWeight();

    /**
     * 查询所有通过pLengh
     * @return
     */
    List<Product2> findAllProduct2BypLengh();

    /**
     * 查询所有通过 pWidth
     * @return
     */
    List<Product2> findAllProduct2BypWidth();

    /**
     * 查询所有通过pThickness
     * @return
     */
    List<Product2> findAllProduct2BypThickness();

    /**
     * 查询所有通过 pShellMaterial
     * @return
     */
    List<Product2> findAllProduct2BypShellMaterial();

    /**
     * 查询所有通过pShellDescription
     * @return
     */
    List<Product2> findAllProduct2BypShellDescription();

    /**
     * 查询所有通过pSafety
     * @return
     */
    List<Product2> findAllProduct2BypSafety();

    /**
     * 查询所有通过pDissipation
     * @return
     */
    List<Product2> findAllProduct2BypDissipation();

    /**
     * 查询所有通过pSoftware
     * @return
     */
    List<Product2>findAllProduct2BypSoftware();

    /**
     * 查询所有通过pPackagingList
     * @return
     */
    List<Product2> findAllProduct2BypPackagingList();

    /**
     * 查询所有通过pGuarantee
     * @return
     */
    List<Product2> findAllProduct2BypGuarantee();

    /**
     * 查询所有通过pWarranty
     * @return
     */
    List<Product2> findAllProduct2BypWarranty();

    /**
     * 查询所有通过pWarrantyRemark
     * @return
     */
    List<Product2> findAllProduct2BypWarrantyRemark();

    /**
     * 查询所有通过pTel
     * @return
     */
    List<Product2> findAllProduct2BypTel();

    /**
     * 查询所有通过pTelRemark
     * @return
     */
    List<Product2> findAllProduct2BypTelRemark();

    /**
     * 查询所有通过pDatail
     * @return
     */
    List<Product2> findAllProduct2BypDatail();

    /**
     * 查询所有通过pPicture
     * @return
     */
    List<Product2> findAllProduct2BypPicture();


    /**
     * 插入一个新Product2
     * @param product2
     */
    void insertOneProduct2(Product2 product2)throws Exception;

    /**
     * 通过pCode更新product2信息
     * @param product2
     */
    void updateProduct2BypCode(Product2 product2)throws Exception;

    /**
     * 通过pCode删除product2信息
     * @param pCode
     *
     */
    void deleteProduct2BypCode(String pCode)throws Exception;

    /**
     * 查询一个通过pCode
     * @return
     */
    Product2 findOneProduct2BypCode(String pCode);











}
