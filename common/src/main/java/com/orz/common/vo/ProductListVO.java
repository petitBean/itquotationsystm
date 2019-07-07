package com.orz.common.vo;

/**
 * @author Wangxingze
 * @date 2019-07-07 20:48
 */
public class ProductListVO {

    /**
     * 产品编码
     */
    private String pCode;

    /**
     * 名称
     */
    private String pName;
    /**
     * 描述
     */
   // private String other1;

    /**
     * 品型号编码
     */
    private String pCode2;


    /**
     *
     */
    private float pPrice;
    /**
     * 内存容量
     */
    private Integer pRam;
    /**
     * SSD
     */
    private Integer pSsd;
    /**
     * disk
     */
    private Integer pDisk;


    public ProductListVO() {
    }

    public ProductListVO(String pCode, String pName, String pCode2, float pPrice, Integer pRam, Integer pSsd, Integer pDisk) {
        this.pCode = pCode;
        this.pName = pName;
        this.pCode2 = pCode2;
        this.pPrice = pPrice;
        this.pRam = pRam;
        this.pSsd = pSsd;
        this.pDisk = pDisk;
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

    public String getpCode2() {
        return pCode2;
    }

    public void setpCode2(String pCode2) {
        this.pCode2 = pCode2;
    }

    public float getpPrice() {
        return pPrice;
    }

    public void setpPrice(float pPrice) {
        this.pPrice = pPrice;
    }

    public Integer getpRam() {
        return pRam;
    }

    public void setpRam(Integer pRam) {
        this.pRam = pRam;
    }

    public Integer getpSsd() {
        return pSsd;
    }

    public void setpSsd(Integer pSsd) {
        this.pSsd = pSsd;
    }

    public Integer getpDisk() {
        return pDisk;
    }

    public void setpDisk(Integer pDisk) {
        this.pDisk = pDisk;
    }
}
