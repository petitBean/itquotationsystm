package com.orz.bean;

/**
 * @author Wangxingze
 * @date 2019-07-03 10:22
 */
public class Trademark {

    /**
     * 品牌编码
     */
    private String tmCode;

    /**
     * 品牌名称
     */
    private String tmName;

    /**
     * 品牌官网
     */
    private String tmWeb;


    /**
     * 品牌电话
     */
    private String tmTel;
    /**
     * 其他1
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

    public Trademark() {
    }

    public String getTmCode() {
        return tmCode;
    }

    public void setTmCode(String tmCode) {
        this.tmCode = tmCode;
    }

    public String getTmName() {
        return tmName;
    }

    public void setTmName(String tmName) {
        this.tmName = tmName;
    }

    public String getTmWeb() {
        return tmWeb;
    }

    public void setTmWeb(String tmWeb) {
        this.tmWeb = tmWeb;
    }

    public String getTmTel() {
        return tmTel;
    }

    public void setTmTel(String tmTel) {
        this.tmTel = tmTel;
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
        return "Trademark{" +
                "tmCode='" + tmCode + '\'' +
                ", tmName='" + tmName + '\'' +
                ", tmWeb='" + tmWeb + '\'' +
                ", tmTel='" + tmTel + '\'' +
                ", other1='" + other1 + '\'' +
                ", other2='" + other2 + '\'' +
                ", other3='" + other3 + '\'' +
                ", other4='" + other4 + '\'' +
                ", other5='" + other5 + '\'' +
                '}';
    }

    public Trademark(String tmCode, String tmName, String tmWeb, String tmTel,
                     String other1, String other2, String other3, String other4, String other5) {
        this.tmCode = tmCode;
        this.tmName = tmName;
        this.tmWeb = tmWeb;
        this.tmTel = tmTel;
        this.other1 = other1;
        this.other2 = other2;
        this.other3 = other3;
        this.other4 = other4;
        this.other5 = other5;
    }
}
