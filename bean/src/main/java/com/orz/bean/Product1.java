package com.orz.bean;

import java.util.Date;

/**
 * @author Wangxingze
 * @date 2019-07-02 21:54
 */
public class Product1 {

    /**
     * 产品编码
     */
    private String pCode;

    /**
     * 名称
     */
    private String pName;

    /**
     * 品牌编码
     */
    private String tmCode;
    /**
     * 上市时间
     */
    private Date publishTime;
    /**
     *产品类型
     */
    private String pType;
    /**
     * 产品定位
     */
    private String pPosition;
    /**
     * 操作系统
     */
    private String pOS;
    /**
     * 主板芯片组
     */
    private String pChipset;
    /**
     * 触控屏
     */
    private Integer pTouch;
    /**
     * 屏幕尺寸
     */
    private Integer pScreenSize;
    /**
     * 屏幕分辨率
     */
    private Integer pScreenResolution;
    /**
     * 屏幕技术
     */
    private String pTechnology;
    /**
     * 摄像头
     */
    private String pCamera;
    /**
     * 音频系统
     */
    private String pAudio;
    /**
     * 扬声器
     */
    private String pSpeaker;
    /**
     * 麦克风
     */
    private String pMike;
    /**
     * 无线网卡
     */
    private String pWlan;
    /**
     * 有线网卡
     */
    private String pLan;
    /**
     * 蓝牙
     */
    private String pBluetooth;
    /**
     * 数据接口
     */
    private String pDataInterface;
    /**
     * 音频接口
     */
    private String pAudioInterface;
    /**
     * 视频接口
     */
    private String pVideoInterface;
    /**
     * 其他接口
     */
    private String pOtherInterface;
    /**
     * qita 1
     */
    private String other1;
    /**
     * 其他2
     */
    private String other2;
    /**
     * 其他3
     */
    private String other3;
    /**
     * 其他4
     */
    private String other4;
    /**
     * 其他5
     */
    private String other5;


    Product2 product2; //级联查询需要

    Product3 product3;

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public Product3 getProduct3() {
        return product3;
    }

    public void setProduct3(Product3 product3) {
        this.product3 = product3;
    }

    public Product2 getProduct2() {
        return product2;
    }

    public void setProduct2(Product2 product2) {
        this.product2 = product2;
    }

    public String getpCode() {
        return pCode;
    }

    public void setpCode(String pCode) {
        this.pCode = pCode;
    }

    public String getTmCode() {
        return tmCode;
    }

    public void setTmCode(String tmCode) {
        this.tmCode = tmCode;
    }

    public Date getPublishTime() {
        return publishTime;
    }

    public void setPublishTime(Date publishTime) {
        this.publishTime = publishTime;
    }

    public String getpType() {
        return pType;
    }

    public void setpType(String pType) {
        this.pType = pType;
    }

    public String getpPosition() {
        return pPosition;
    }

    public void setpPosition(String pPosition) {
        this.pPosition = pPosition;
    }

    public String getpOS() {
        return pOS;
    }

    public void setpOS(String pOS) {
        this.pOS = pOS;
    }

    public String getpChipset() {
        return pChipset;
    }

    public void setpChipset(String pChipset) {
        this.pChipset = pChipset;
    }

    public Integer getpTouch() {
        return pTouch;
    }

    public void setpTouch(Integer pTouch) {
        this.pTouch = pTouch;
    }

    public Integer getpScreenSize() {
        return pScreenSize;
    }

    public void setpScreenSize(Integer pScreenSize) {
        this.pScreenSize = pScreenSize;
    }

    public Integer getpScreenResolution() {
        return pScreenResolution;
    }

    public void setpScreenResolution(Integer pScreenResolution) {
        this.pScreenResolution = pScreenResolution;
    }

    public String getpTechnology() {
        return pTechnology;
    }

    public void setpTechnology(String pTechnology) {
        this.pTechnology = pTechnology;
    }

    public String getpCamera() {
        return pCamera;
    }

    public void setpCamera(String pCamera) {
        this.pCamera = pCamera;
    }

    public String getpAudio() {
        return pAudio;
    }

    public void setpAudio(String pAudio) {
        this.pAudio = pAudio;
    }

    public String getpSpeaker() {
        return pSpeaker;
    }

    public void setpSpeaker(String pSpeaker) {
        this.pSpeaker = pSpeaker;
    }

    public String getpMike() {
        return pMike;
    }

    public void setpMike(String pMike) {
        this.pMike = pMike;
    }

    public String getpWlan() {
        return pWlan;
    }

    public void setpWlan(String pWlan) {
        this.pWlan = pWlan;
    }

    public String getpLan() {
        return pLan;
    }

    public void setpLan(String pLan) {
        this.pLan = pLan;
    }

    public String getpBluetooth() {
        return pBluetooth;
    }

    public void setpBluetooth(String pBluetooth) {
        this.pBluetooth = pBluetooth;
    }

    public String getpDataInterface() {
        return pDataInterface;
    }

    public void setpDataInterface(String pDataInterface) {
        this.pDataInterface = pDataInterface;
    }

    public String getpAudioInterface() {
        return pAudioInterface;
    }

    public void setpAudioInterface(String pAudioInterface) {
        this.pAudioInterface = pAudioInterface;
    }

    public String getpVideoInterface() {
        return pVideoInterface;
    }

    public void setpVideoInterface(String pVideoInterface) {
        this.pVideoInterface = pVideoInterface;
    }

    public String getpOtherInterface() {
        return pOtherInterface;
    }

    public void setpOtherInterface(String pOtherInterface) {
        this.pOtherInterface = pOtherInterface;
    }

    public String getOther1() {
        return other1;
    }

    public void setOther1(String other1) {
        this.other1 = other1;
    }

    public String getOther2() {
        return other2;
    }

    public void setOther2(String other2) {
        this.other2 = other2;
    }

    public String getOther3() {
        return other3;
    }

    public void setOther3(String other3) {
        this.other3 = other3;
    }

    public String getOther4() {
        return other4;
    }

    public void setOther4(String other4) {
        this.other4 = other4;
    }

    public String getOther5() {
        return other5;
    }

    public void setOther5(String other5) {
        this.other5 = other5;
    }

    @Override
    public String toString() {
        return "Product1{" +
                "pCode='" + pCode + '\'' +
                ", tmCode='" + tmCode + '\'' +
                ", publishTime=" + publishTime +
                ", pType='" + pType + '\'' +
                ", pPosition='" + pPosition + '\'' +
                ", pOS='" + pOS + '\'' +
                ", pChipset='" + pChipset + '\'' +
                ", pTouch=" + pTouch +
                ", pScreenSize=" + pScreenSize +
                ", pScreenResolution=" + pScreenResolution +
                ", pTechnology='" + pTechnology + '\'' +
                ", pCamera='" + pCamera + '\'' +
                ", pAudio='" + pAudio + '\'' +
                ", pSpeaker='" + pSpeaker + '\'' +
                ", pMike='" + pMike + '\'' +
                ", pWlan='" + pWlan + '\'' +
                ", pLan='" + pLan + '\'' +
                ", pBluetooth='" + pBluetooth + '\'' +
                ", pDataInterface='" + pDataInterface + '\'' +
                ", pAudioInterface='" + pAudioInterface + '\'' +
                ", pVideoInterface='" + pVideoInterface + '\'' +
                ", pOtherInterface='" + pOtherInterface + '\'' +
                ", other1='" + other1 + '\'' +
                ", other2='" + other2 + '\'' +
                ", other3='" + other3 + '\'' +
                ", other4='" + other4 + '\'' +
                ", other5='" + other5 + '\'' +
                '}';
    }

    public Product1() {
    }

    public Product1(String pCode, String tmCode, Date publishTime, String pType, String pPosition,
                    String pOS, String pChipset, Integer pTouch, Integer pScreenSize,
                    Integer pScreenResolution, String pTechnology, String pCamera, String pAudio,
                    String pSpeaker, String pMike, String pWlan, String pLan, String pBluetooth,
                    String pDataInterface, String pAudioInterface, String pVideoInterface,
                    String pOtherInterface,
                    String other1, String other2, String other3, String other4, String other5) {
        this.pCode = pCode;
        this.tmCode = tmCode;
        this.publishTime = publishTime;
        this.pType = pType;
        this.pPosition = pPosition;
        this.pOS = pOS;
        this.pChipset = pChipset;
        this.pTouch = pTouch;
        this.pScreenSize = pScreenSize;
        this.pScreenResolution = pScreenResolution;
        this.pTechnology = pTechnology;
        this.pCamera = pCamera;
        this.pAudio = pAudio;
        this.pSpeaker = pSpeaker;
        this.pMike = pMike;
        this.pWlan = pWlan;
        this.pLan = pLan;
        this.pBluetooth = pBluetooth;
        this.pDataInterface = pDataInterface;
        this.pAudioInterface = pAudioInterface;
        this.pVideoInterface = pVideoInterface;
        this.pOtherInterface = pOtherInterface;
        this.other1 = other1;
        this.other2 = other2;
        this.other3 = other3;
        this.other4 = other4;
        this.other5 = other5;
    }

}
