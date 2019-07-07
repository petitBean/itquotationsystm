package com.orz.common.vo;

import java.util.Date;

/**
 * @author Wangxingze
 * @date 2019-07-08 04:46
 */
public class ProductU {

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


    private String pFingeringEquipment;
    /**
     * 键盘描述
     */
    private String pKeyboard;

    /**
     * 指纹识别
     */
    private Integer pFingerprintIdentification;
    /**
     * 电池类型
     */
    private String pBatteryType;
    /**
     * 续航时间
     */
    private String pDuration;
    /**
     * 电源适配器
     */
    private String pPowerAdapter;
    /**
     * 笔记本重量
     */
    private Integer pWeight;
    /**
     * 长度
     */
    private Integer pLengh;
    /**
     * 宽度
     */
    private Integer pWidth;
    /**
     * 厚度
     */
    private Integer pThickness;
    /**
     * 外壳材质
     */
    private String pShellMaterial;
    /**
     * 外壳描述
     */
    private String pShellDescription;
    /**
     * 安全性能
     */
    private String pSafety;
    /**
     * 散热系统
     */
    private String pDissipation;
    /**
     * 附带软件
     */
    private String pSoftware;
    /**
     * 包装清单
     */
    private String pPackagingList;
    /**
     * 保修政策
     */
    private String pGuarantee;
    /**
     * 质保时间
     */
    private Double pWarranty;
    /**
     * 质保备注
     */
    private String pWarrantyRemark;
    /**
     * 客服电话
     */
    private String pTel;
    /**
     * 电话备注
     */
    private String pTelRemark;
    /**
     * 详细内容
     */
    private String pDatail;
    /**
     * 图片地址
     */
    private String pPicture;



    /**
     *
     */
    private float pPrice;

    /**
     * 编码
     */
    private String CPUCode;
    /**
     * GPU编码
     */
    private String GPUCode;
    /**
     * CPU厂家
     */
    private String pCPUFactory;
    /**
     * CPU系列
     */
    private String pCPUSeries;
    /**
     * CPU代号
     */
    private String CPUi;
    /**
     * CPU代数
     */
    private Integer pCPUGeneration;
    /**
     * CPU型号
     */
    private String pCPUType;
    /**
     * CPU主锁
     */
    private Double pCPUHZ;
    /**
     * 最高音频
     */
    private Double pCPUMHZ;
    /**
     * 核心数
     */
    private Integer pCPUAmount;
    /**
     * 线程数
     */
    private Integer pTread;
    /**
     * 三级缓存
     */
    private Integer pCache;
    /**
     * 总线规格
     */
    private String pBus;
    /**
     * 核心架构
     */
    private String pStructure;
    /**
     * 制程工艺
     */
    private Integer pCraft;
    /**
     * 功耗
     */
    private Integer pConsumption;
    /**
     * 内存容量
     */
    private Integer pRAM;
    /**
     * 内存条数量
     */
    private Integer pRAMC;
    /**
     * 内存类型
     */
    private String pRAMType;
    /**
     * SSD
     */
    private Integer pSSD;
    /**
     * disk
     */
    private Integer pDisk;
    /**
     * 硬盘描述
     */
    private String pROMDescription;
    /**
     * 光驱
     */
    private String pCD;
    /**
     * 显卡类型
     */
    private Integer pGPUType;
    /**
     * 显卡芯片
     */
    private String pGPUName;
    /**
     * 显存容量
     */
    private Integer pGPURAM;
    /**
     * 显存类型
     */
    private Integer pGDDR;
    /**
     * 显存位宽
     */
    private Integer pGPUBit;
    /**
    /**
     * 其他6
     */
    private String other6;
    /**
     * 其他7
     */
    private String other7;
    /**
     * 其他8
     */
    private String other8;
    /**
     * 其他9
     */
    private String other9;

    public ProductU() {
    }

    public ProductU(String pCode, String pName, String tmCode, Date publishTime, String pType, String pPosition, String pOS, String pChipset, Integer pTouch, Integer pScreenSize, Integer pScreenResolution, String pTechnology, String pCamera, String pAudio, String pSpeaker, String pMike, String pWlan, String pLan, String pBluetooth, String pDataInterface, String pAudioInterface, String pVideoInterface, String pOtherInterface, String other1, String other2, String other3, String other4, String other5, String pFingeringEquipment, String pKeyboard, Integer pFingerprintIdentification, String pBatteryType, String pDuration, String pPowerAdapter, Integer pWeight, Integer pLengh, Integer pWidth, Integer pThickness, String pShellMaterial, String pShellDescription, String pSafety, String pDissipation, String pSoftware, String pPackagingList, String pGuarantee, Double pWarranty, String pWarrantyRemark, String pTel, String pTelRemark, String pDatail, String pPicture, float pPrice, String CPUCode, String GPUCode, String pCPUFactory, String pCPUSeries, String CPUi, Integer pCPUGeneration, String pCPUType, Double pCPUHZ, Double pCPUMHZ, Integer pCPUAmount, Integer pTread, Integer pCache, String pBus, String pStructure, Integer pCraft, Integer pConsumption, Integer pRAM, Integer pRAMC, String pRAMType, Integer pSSD, Integer pDisk, String pROMDescription, String pCD, Integer pGPUType, String pGPUName, Integer pGPURAM, Integer pGDDR, Integer pGPUBit, String other6, String other7, String other8, String other9) {
        this.pCode = pCode;
        this.pName = pName;
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
        this.pFingeringEquipment = pFingeringEquipment;
        this.pKeyboard = pKeyboard;
        this.pFingerprintIdentification = pFingerprintIdentification;
        this.pBatteryType = pBatteryType;
        this.pDuration = pDuration;
        this.pPowerAdapter = pPowerAdapter;
        this.pWeight = pWeight;
        this.pLengh = pLengh;
        this.pWidth = pWidth;
        this.pThickness = pThickness;
        this.pShellMaterial = pShellMaterial;
        this.pShellDescription = pShellDescription;
        this.pSafety = pSafety;
        this.pDissipation = pDissipation;
        this.pSoftware = pSoftware;
        this.pPackagingList = pPackagingList;
        this.pGuarantee = pGuarantee;
        this.pWarranty = pWarranty;
        this.pWarrantyRemark = pWarrantyRemark;
        this.pTel = pTel;
        this.pTelRemark = pTelRemark;
        this.pDatail = pDatail;
        this.pPicture = pPicture;
        this.pPrice = pPrice;
        this.CPUCode = CPUCode;
        this.GPUCode = GPUCode;
        this.pCPUFactory = pCPUFactory;
        this.pCPUSeries = pCPUSeries;
        this.CPUi = CPUi;
        this.pCPUGeneration = pCPUGeneration;
        this.pCPUType = pCPUType;
        this.pCPUHZ = pCPUHZ;
        this.pCPUMHZ = pCPUMHZ;
        this.pCPUAmount = pCPUAmount;
        this.pTread = pTread;
        this.pCache = pCache;
        this.pBus = pBus;
        this.pStructure = pStructure;
        this.pCraft = pCraft;
        this.pConsumption = pConsumption;
        this.pRAM = pRAM;
        this.pRAMC = pRAMC;
        this.pRAMType = pRAMType;
        this.pSSD = pSSD;
        this.pDisk = pDisk;
        this.pROMDescription = pROMDescription;
        this.pCD = pCD;
        this.pGPUType = pGPUType;
        this.pGPUName = pGPUName;
        this.pGPURAM = pGPURAM;
        this.pGDDR = pGDDR;
        this.pGPUBit = pGPUBit;
        this.other6 = other6;
        this.other7 = other7;
        this.other8 = other8;
        this.other9 = other9;
    }

    public String getpCode() {
        return pCode;
    }

    public void setpCode(String pCode) {
        this.pCode = pCode;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
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

    public String getpFingeringEquipment() {
        return pFingeringEquipment;
    }

    public void setpFingeringEquipment(String pFingeringEquipment) {
        this.pFingeringEquipment = pFingeringEquipment;
    }

    public String getpKeyboard() {
        return pKeyboard;
    }

    public void setpKeyboard(String pKeyboard) {
        this.pKeyboard = pKeyboard;
    }

    public Integer getpFingerprintIdentification() {
        return pFingerprintIdentification;
    }

    public void setpFingerprintIdentification(Integer pFingerprintIdentification) {
        this.pFingerprintIdentification = pFingerprintIdentification;
    }

    public String getpBatteryType() {
        return pBatteryType;
    }

    public void setpBatteryType(String pBatteryType) {
        this.pBatteryType = pBatteryType;
    }

    public String getpDuration() {
        return pDuration;
    }

    public void setpDuration(String pDuration) {
        this.pDuration = pDuration;
    }

    public String getpPowerAdapter() {
        return pPowerAdapter;
    }

    public void setpPowerAdapter(String pPowerAdapter) {
        this.pPowerAdapter = pPowerAdapter;
    }

    public Integer getpWeight() {
        return pWeight;
    }

    public void setpWeight(Integer pWeight) {
        this.pWeight = pWeight;
    }

    public Integer getpLengh() {
        return pLengh;
    }

    public void setpLengh(Integer pLengh) {
        this.pLengh = pLengh;
    }

    public Integer getpWidth() {
        return pWidth;
    }

    public void setpWidth(Integer pWidth) {
        this.pWidth = pWidth;
    }

    public Integer getpThickness() {
        return pThickness;
    }

    public void setpThickness(Integer pThickness) {
        this.pThickness = pThickness;
    }

    public String getpShellMaterial() {
        return pShellMaterial;
    }

    public void setpShellMaterial(String pShellMaterial) {
        this.pShellMaterial = pShellMaterial;
    }

    public String getpShellDescription() {
        return pShellDescription;
    }

    public void setpShellDescription(String pShellDescription) {
        this.pShellDescription = pShellDescription;
    }

    public String getpSafety() {
        return pSafety;
    }

    public void setpSafety(String pSafety) {
        this.pSafety = pSafety;
    }

    public String getpDissipation() {
        return pDissipation;
    }

    public void setpDissipation(String pDissipation) {
        this.pDissipation = pDissipation;
    }

    public String getpSoftware() {
        return pSoftware;
    }

    public void setpSoftware(String pSoftware) {
        this.pSoftware = pSoftware;
    }

    public String getpPackagingList() {
        return pPackagingList;
    }

    public void setpPackagingList(String pPackagingList) {
        this.pPackagingList = pPackagingList;
    }

    public String getpGuarantee() {
        return pGuarantee;
    }

    public void setpGuarantee(String pGuarantee) {
        this.pGuarantee = pGuarantee;
    }

    public Double getpWarranty() {
        return pWarranty;
    }

    public void setpWarranty(Double pWarranty) {
        this.pWarranty = pWarranty;
    }

    public String getpWarrantyRemark() {
        return pWarrantyRemark;
    }

    public void setpWarrantyRemark(String pWarrantyRemark) {
        this.pWarrantyRemark = pWarrantyRemark;
    }

    public String getpTel() {
        return pTel;
    }

    public void setpTel(String pTel) {
        this.pTel = pTel;
    }

    public String getpTelRemark() {
        return pTelRemark;
    }

    public void setpTelRemark(String pTelRemark) {
        this.pTelRemark = pTelRemark;
    }

    public String getpDatail() {
        return pDatail;
    }

    public void setpDatail(String pDatail) {
        this.pDatail = pDatail;
    }

    public String getpPicture() {
        return pPicture;
    }

    public void setpPicture(String pPicture) {
        this.pPicture = pPicture;
    }

    public float getpPrice() {
        return pPrice;
    }

    public void setpPrice(float pPrice) {
        this.pPrice = pPrice;
    }

    public String getCPUCode() {
        return CPUCode;
    }

    public void setCPUCode(String CPUCode) {
        this.CPUCode = CPUCode;
    }

    public String getGPUCode() {
        return GPUCode;
    }

    public void setGPUCode(String GPUCode) {
        this.GPUCode = GPUCode;
    }

    public String getpCPUFactory() {
        return pCPUFactory;
    }

    public void setpCPUFactory(String pCPUFactory) {
        this.pCPUFactory = pCPUFactory;
    }

    public String getpCPUSeries() {
        return pCPUSeries;
    }

    public void setpCPUSeries(String pCPUSeries) {
        this.pCPUSeries = pCPUSeries;
    }

    public String getCPUi() {
        return CPUi;
    }

    public void setCPUi(String CPUi) {
        this.CPUi = CPUi;
    }

    public Integer getpCPUGeneration() {
        return pCPUGeneration;
    }

    public void setpCPUGeneration(Integer pCPUGeneration) {
        this.pCPUGeneration = pCPUGeneration;
    }

    public String getpCPUType() {
        return pCPUType;
    }

    public void setpCPUType(String pCPUType) {
        this.pCPUType = pCPUType;
    }

    public Double getpCPUHZ() {
        return pCPUHZ;
    }

    public void setpCPUHZ(Double pCPUHZ) {
        this.pCPUHZ = pCPUHZ;
    }

    public Double getpCPUMHZ() {
        return pCPUMHZ;
    }

    public void setpCPUMHZ(Double pCPUMHZ) {
        this.pCPUMHZ = pCPUMHZ;
    }

    public Integer getpCPUAmount() {
        return pCPUAmount;
    }

    public void setpCPUAmount(Integer pCPUAmount) {
        this.pCPUAmount = pCPUAmount;
    }

    public Integer getpTread() {
        return pTread;
    }

    public void setpTread(Integer pTread) {
        this.pTread = pTread;
    }

    public Integer getpCache() {
        return pCache;
    }

    public void setpCache(Integer pCache) {
        this.pCache = pCache;
    }

    public String getpBus() {
        return pBus;
    }

    public void setpBus(String pBus) {
        this.pBus = pBus;
    }

    public String getpStructure() {
        return pStructure;
    }

    public void setpStructure(String pStructure) {
        this.pStructure = pStructure;
    }

    public Integer getpCraft() {
        return pCraft;
    }

    public void setpCraft(Integer pCraft) {
        this.pCraft = pCraft;
    }

    public Integer getpConsumption() {
        return pConsumption;
    }

    public void setpConsumption(Integer pConsumption) {
        this.pConsumption = pConsumption;
    }

    public Integer getpRAM() {
        return pRAM;
    }

    public void setpRAM(Integer pRAM) {
        this.pRAM = pRAM;
    }

    public Integer getpRAMC() {
        return pRAMC;
    }

    public void setpRAMC(Integer pRAMC) {
        this.pRAMC = pRAMC;
    }

    public String getpRAMType() {
        return pRAMType;
    }

    public void setpRAMType(String pRAMType) {
        this.pRAMType = pRAMType;
    }

    public Integer getpSSD() {
        return pSSD;
    }

    public void setpSSD(Integer pSSD) {
        this.pSSD = pSSD;
    }

    public Integer getpDisk() {
        return pDisk;
    }

    public void setpDisk(Integer pDisk) {
        this.pDisk = pDisk;
    }

    public String getpROMDescription() {
        return pROMDescription;
    }

    public void setpROMDescription(String pROMDescription) {
        this.pROMDescription = pROMDescription;
    }

    public String getpCD() {
        return pCD;
    }

    public void setpCD(String pCD) {
        this.pCD = pCD;
    }

    public Integer getpGPUType() {
        return pGPUType;
    }

    public void setpGPUType(Integer pGPUType) {
        this.pGPUType = pGPUType;
    }

    public String getpGPUName() {
        return pGPUName;
    }

    public void setpGPUName(String pGPUName) {
        this.pGPUName = pGPUName;
    }

    public Integer getpGPURAM() {
        return pGPURAM;
    }

    public void setpGPURAM(Integer pGPURAM) {
        this.pGPURAM = pGPURAM;
    }

    public Integer getpGDDR() {
        return pGDDR;
    }

    public void setpGDDR(Integer pGDDR) {
        this.pGDDR = pGDDR;
    }

    public Integer getpGPUBit() {
        return pGPUBit;
    }

    public void setpGPUBit(Integer pGPUBit) {
        this.pGPUBit = pGPUBit;
    }

    public String getOther6() {
        return other6;
    }

    public void setOther6(String other6) {
        this.other6 = other6;
    }

    public String getOther7() {
        return other7;
    }

    public void setOther7(String other7) {
        this.other7 = other7;
    }

    public String getOther8() {
        return other8;
    }

    public void setOther8(String other8) {
        this.other8 = other8;
    }

    public String getOther9() {
        return other9;
    }

    public void setOther9(String other9) {
        this.other9 = other9;
    }
}
