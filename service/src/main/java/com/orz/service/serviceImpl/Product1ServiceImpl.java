package com.orz.service.serviceImpl;

import com.github.pagehelper.PageHelper;
import com.orz.bean.Product1;
import com.orz.common.enums.OrzExceptionEnum;
import com.orz.common.exception.OrzException;
import com.orz.common.vo.IndexPageProductVO;
import com.orz.dao.Product1Dao;
import com.orz.service.Product1Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author Wangxingze
 * @date 2019-07-03 18:31
 */
@Service
public class Product1ServiceImpl implements Product1Service {


    @Autowired
    private Product1Dao product1Dao;

    //-----------------------------------DAO---------------------------------//
    //查询所有
    @Override
    public  List<Product1> findAllProduct1(){
        return product1Dao.findAllProduct1();
    }

    @Override
    public List<Product1> joinFindListBypCode(List<String> pCodeList) {
        return product1Dao.joinFindListBypCode(pCodeList);
    }

    @Override
    public List<String> findpCodeListByTmCodeList(List<String> tmCodeList) {
        return product1Dao.findpCodeListByTmCodeList(tmCodeList);
    }

    @Override
    public List<String> findOnePagepCode(Integer page, Integer pageSize) {
        if (page<=0){
            return null;
        }
        return product1Dao.findOnePagepCode((page-1)*pageSize,pageSize);
    }

    @Override
    public List<Product1> findOnePage(Integer page, Integer pageSize) {
        if (page<=0){
            return null;
        }
        return product1Dao.findOnePage((page-1)*pageSize,pageSize);
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

    @Override
    public Product1 findOneProduct1BypCode(String pCode) {
        return product1Dao.findOneProduct1BypCode(pCode);
    }

    @Override
    @Transactional
    public void updateProduct1BypCode(Product1 product1) throws Exception{
        try{
            product1Dao.updateProduct1BypCode(product1);
        }
        catch (Exception e){
            e.printStackTrace();
            System.out.println(e.getCause());
            throw new OrzException(OrzExceptionEnum.UPDATE_DATA_FAILED);
        }
    }

    @Override
    @Transactional
    public void deleteProduct1BypCode(String pCode) throws Exception{
        try{
            product1Dao.deleteProduct1BypCode(pCode);
        }
        catch (Exception e){
            e.printStackTrace();
            System.out.println(e.getCause());
            throw new OrzException(OrzExceptionEnum.DELETE_DATA_FAILED);
        }
    }

    @Override
    public List<Product1> findAllProduct1BytmCode(String tmCode) {
        return null;
    }

    @Override
    public List<Product1> findAllProduct1BypublishTime(Date publishTime) {
        return null;
    }

    @Override
    public List<Product1> findAllProduct1BypType(String pType) {
        return null;
    }

    @Override
    public List<Product1> findAllProduct1BypPosition(String pPosition) {
        return null;
    }

    @Override
    public List<Product1> findAllProduct1BypOS(String pOS) {
        return null;
    }

    @Override
    public List<Product1> findAllProduct1BypChipset(String pChipset) {
        return null;
    }

    @Override
    public List<Product1> findAllProduct1BypTouch(Integer pTouch) {
        return null;
    }

    @Override
    public List<Product1> findAllProduct1BypScreenSize(Integer pScreenSize) {
        return null;
    }

    @Override
    public List<Product1> findAllProduct1BypScreenResolution(Integer pScreenResolution) {
        return null;
    }

    @Override
    public List<Product1> findAllProduct1BypTechnology(String pTechnology) {
        return null;
    }

    @Override
    public List<Product1> findAllProduct1BypCamera(String pCamera) {
        return null;
    }

    @Override
    public List<Product1> findAllProduct1BypAudio(String pAudio) {
        return null;
    }

    @Override
    public List<Product1> findAllProduct1BypSpeaker(String pSpeaker) {
        return null;
    }

    @Override
    public List<Product1> findAllProduct1BypMike(String pMike) {
        return null;
    }

    @Override
    public List<Product1> findAllProduct1BypWlan(String pWlan) {
        return null;
    }

    @Override
    public List<Product1> findAllProduct1BypLan(String pLan) {
        return null;
    }

    @Override
    public List<Product1> findAllProduct1BypBluetooth(String pBluetooth) {
        return null;
    }

    @Override
    public List<Product1> findAllProduct1BypDataInterface(String pDataInterface) {
        return null;
    }

    @Override
    public List<Product1> findAllProduct1BypAudioInterface(String pAudioInterface) {
        return null;
    }

    @Override
    public List<Product1> findAllProduct1BypVideoInterface(String pVideoInterface) {
        return null;
    }

    @Override
    public List<Product1> findAllProduct1BypOtherInterface(String pOtherInterface) {
        return null;
    }


    //-----------------------------------业务逻辑---------------------------------//


    @Override
    public List<IndexPageProductVO> getUpProductVOList(Integer page, Integer pageSize) {
        //查询Code
        List<String> pCodeList=findOnePagepCode(page,pageSize);
        //pCodeList.size()==0 不会为真------------------------------！！！！！！！！-----------------------------////////
        if (pCodeList.size()==0){
            return null;
        }
        //联表查询，查出来多条，但是到多表连接只有部分不为空
        return findIndexPageProductListBypCodeList(pCodeList);

    }

    @Override
    public List<IndexPageProductVO> findIndexPageProductListBypCodeList(List<String> pCodeList) {
        List<Product1> product1List=joinFindListBypCode(pCodeList);
        //upList
        List<IndexPageProductVO> indexPageProductVOList =new ArrayList<>();
        if (product1List==null){
            return null;
        }
        else {
            for (Product1 product1:product1List){
                //TODO 改以下数据
                if (product1.getProduct2().getpPicture()==null){
                    break;
                }
                IndexPageProductVO indexPageProductVO =new IndexPageProductVO(product1.getProduct2().getpPicture(),product1.getpName()
                        ,product1.getpPosition(),product1.getProduct3().getpPrice());
                indexPageProductVO.setpCode(product1.getpCode());
                indexPageProductVO.setpDescription(product1.getOther1());
                //添加数据
                indexPageProductVOList.add(indexPageProductVO);
            }
        }
        return indexPageProductVOList;
    }

    @Override
    public List<IndexPageProductVO> findProductVoListByTmCodeList(Integer pageNum, Integer pageSize, List<String> tmCodeList) {
       if (tmCodeList.size()==0){
           return null;
       }
        List<String> pCodeList=findpCodeListByTmCodeList(tmCodeList);
        if (pCodeList.size()==0){
            return null;
        }
        else {
            PageHelper.startPage(pageNum,pageSize);
            return findIndexPageProductListBypCodeList(pCodeList);
        }
    }


    @Override
    public List<String> findpCodeListBypNameLike(String keyword) {
        return product1Dao.findpCodeListBypNameLike("%"+keyword+"%");
    }

    @Override
    public List<IndexPageProductVO> findProductVoListBypNameLike(String keyword) {
        if (keyword==null){
            return null;
        }
        List<String> pCodeList=findpCodeListBypNameLike(keyword);
        if (pCodeList.size()==0){
            return null;
        }
        else {
            return findIndexPageProductListBypCodeList(pCodeList);
        }
    }
}
