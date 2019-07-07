package com.orz.common.vo;

/**
 * 返回主页的头部list数据
 * @author Wangxingze
 * @date 2019-07-05 21:36
 */
public class IndexPageProductVO {

    /**
     * 对应p1 other1
     */
    private  String pDescription;

  private  String pCode;
    /**
     * 产品图片
     */
   private String pPicture;

    /**
     * 产品名称
     */
    private String pName;

    /**
     *
     */
    private String pPosition;

    /**
     * 价格
     */
    private float pPrice;

    public IndexPageProductVO() {
    }

    public String getpCode() {
        return pCode;
    }

    public void setpCode(String pCode) {
        this.pCode = pCode;
    }

    public IndexPageProductVO(String pPicture, String pName, String pPosition, float pPrice) {
        this.pPicture = pPicture;
        this.pName = pName;
        this.pPosition = pPosition;
        this.pPrice = pPrice;
    }

    public String getpPicture() {
        return pPicture;
    }

    public void setpPicture(String pPicture) {
        this.pPicture = pPicture;
    }

    public String getpDescription() {
        return pDescription;
    }

    public void setpDescription(String pDescription) {
        this.pDescription = pDescription;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public String getpPosition() {
        return pPosition;
    }

    public void setpPosition(String pPosition) {
        this.pPosition = pPosition;
    }

    public float getpPrice() {
        return pPrice;
    }

    public void setpPrice(float pPrice) {
        this.pPrice = pPrice;
    }
}
