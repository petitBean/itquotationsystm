package com.orz.service;

import com.orz.bean.Product1;
import com.orz.common.vo.IndexPageProductVO;

import java.util.Date;
import java.util.List;

public interface Product1Service {


    //------------DAO -------------

    /**
     * 插入一个新Product1
     *
     * @param product1
     */
    void insertOneProduct1(Product1 product1) throws Exception;

    /**
     * 查询所有Product1
     *
     * @return
     */
    List<Product1> findAllProduct1();

    /**
     * 连接查询
     *
     * @param pCodeList
     * @return
     */
    List<Product1> joinFindListBypCode(List<String> pCodeList);

    /**
     * 查询一页pCode
     *
     * @param page
     * @param pageSize
     * @return
     */
    List<String> findOnePagepCode(Integer page, Integer pageSize);

    /**
     * 查询一页
     *
     * @param page
     * @param pageSize
     * @return
     */
    List<Product1> findOnePage(Integer page, Integer pageSize);

    /**
     * 通过pCode查找Product1
     *
     * @param pCode
     * @return
     */
    Product1 findOneProduct1BypCode(String pCode);

    /**
     * 通过pCode更新Product1
     *
     * @param product1
     */
    void updateProduct1BypCode(Product1 product1) throws Exception;

    /**
     * 通过pCode删除Product1
     *
     * @param pCode
     */
    void deleteProduct1BypCode(String pCode) throws Exception;


    /**
     * 通过tmCode查找所有Product1
     *
     * @param tmCode
     * @return
     */
    List<Product1> findAllProduct1BytmCode(String tmCode);

    /**
     * 通过publishTime查找所有一个Product1
     *
     * @param publishTime
     * @return
     */
    List<Product1> findAllProduct1BypublishTime(Date publishTime);

    /**
     * 通过pType查找所有Product1
     *
     * @param pType
     * @return
     */
    List<Product1> findAllProduct1BypType(String pType);

    /**
     * 通过pPosition查找所有Product1
     *
     * @param pPosition
     * @return
     */
    List<Product1> findAllProduct1BypPosition(String pPosition);

    /**
     * 通过pOS查找所有Product1
     *
     * @param pOS
     * @return
     */
    List<Product1> findAllProduct1BypOS(String pOS);

    /**
     * 通过pChipset查找所有Product1
     *
     * @param pChipset
     * @return
     */
    List<Product1> findAllProduct1BypChipset(String pChipset);

    /**
     * 通过pTouch查找所有Product1
     *
     * @param pTouch
     * @return
     */
    List<Product1> findAllProduct1BypTouch(Integer pTouch);

    /**
     * 通过pScreenSize查找所有Product1
     *
     * @param pScreenSize
     * @return
     */
    List<Product1> findAllProduct1BypScreenSize(Integer pScreenSize);

    /**
     * 通过pScreenResolution查找所有Product1
     *
     * @param pScreenResolution
     * @return
     */
    List<Product1> findAllProduct1BypScreenResolution(Integer pScreenResolution);

    /**
     * 通过pTechnology查找所有Product1
     *
     * @param pTechnology
     * @return
     */
    List<Product1> findAllProduct1BypTechnology(String pTechnology);

    /**
     * 通过pCamera查找所有Product1
     *
     * @param pCamera
     * @return
     */
    List<Product1> findAllProduct1BypCamera(String pCamera);

    /**
     * 通过pAudio查找所有Product1
     *
     * @param pAudio
     * @return
     */
    List<Product1> findAllProduct1BypAudio(String pAudio);

    /**
     * 通过pSpeaker查找所有Product1
     *
     * @param pSpeaker
     * @return
     */
    List<Product1> findAllProduct1BypSpeaker(String pSpeaker);

    /**
     * 通过pMike查找所有Product1
     *
     * @param pMike
     * @return
     */
    List<Product1> findAllProduct1BypMike(String pMike);

    /**
     * 通过pWlan查找所有Product1
     *
     * @param pWlan
     * @return
     */
    List<Product1> findAllProduct1BypWlan(String pWlan);

    /**
     * 通过pLan查找所有Product1
     *
     * @param pLan
     * @return
     */
    List<Product1> findAllProduct1BypLan(String pLan);

    /**
     * 通过pBluetooth查找所有Product1
     *
     * @param pBluetooth
     * @return
     */
    List<Product1> findAllProduct1BypBluetooth(String pBluetooth);

    /**
     * 通过pDataInterface查找所有Product1
     *
     * @param pDataInterface
     * @return
     */
    List<Product1> findAllProduct1BypDataInterface(String pDataInterface);

    /**
     * 通过pAudioInterface查找所有Product1
     *
     * @param pAudioInterface
     * @return
     */
    List<Product1> findAllProduct1BypAudioInterface(String pAudioInterface);

    /**
     * 通过pVideoInterface查找所有Product1
     *
     * @param pVideoInterface
     * @return
     */
    List<Product1> findAllProduct1BypVideoInterface(String pVideoInterface);

    /**
     * 通过pOtherInterfacepVideoInterface查找所有Product1
     *
     * @param pOtherInterface
     * @return
     */
    List<Product1> findAllProduct1BypOtherInterface(String pOtherInterface);

    /**
     * 查询pCodeList
     *
     * @param tmCodeList
     * @return
     */
    List<String> findpCodeListByTmCodeList(List<String> tmCodeList);

    //-----------------业务逻辑----------------------//

    /**
     * 通过pCodeList查找VOlist
     *
     * @param pCodeList
     * @return
     */
    List<IndexPageProductVO> findIndexPageProductListBypCodeList(List<String> pCodeList);

    /**
     * 查询视图index.jsp顶部数据
     *
     * @param page
     * @param pageSize
     * @return
     */
    List<IndexPageProductVO> getUpProductVOList(Integer page, Integer pageSize);

    /**
     * 通过TmcodeList分页查询视图Volist
     *
     * @param page
     * @param pageSize
     * @param tmCodeList
     * @return
     */
    List<IndexPageProductVO> findProductVoListByTmCodeList(Integer page, Integer pageSize,
                                                       List<String> tmCodeList);

    /**
     * 模糊查询pCodeList
     * @param keyword
     * @return
     */
    List<String> findpCodeListBypNameLike(String keyword);

    /**
     * 模糊查询视图数据VOlist
     * @param keyword
     * @return
     */
    List<IndexPageProductVO> findProductVoListBypNameLike(String keyword);


}
