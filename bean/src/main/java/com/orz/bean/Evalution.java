package com.orz.bean;

import java.util.Date;

/**
 * @author Wangxingze
 * @date 2019-07-03 10:21
 */
public class Evalution {

    /**
     * 用户id
     */
    private int userId;
    /**
     * 产品编码
     */
    private String pCode;
    /**
     * 评价内容
     */
    private String eContent;
    /**
     * 评价时间
     */
    private Date eTime;
    /**
     * 其他1
     */
    private float other1;
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


    public Evalution() {
    }

    public Evalution(int userId, String pCode, String eContent, Date eTime,
                     float other1, String other2, String other3, String other4) {
        this.userId = userId;
        this.pCode = pCode;
        this.eContent = eContent;
        this.eTime = eTime;
        this.other1 = other1;
        this.other2 = other2;
        this.other3 = other3;
        this.other4 = other4;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getpCode() {
        return pCode;
    }

    public void setpCode(String pCode) {
        this.pCode = pCode;
    }

    public String geteContent() {
        return eContent;
    }

    public void seteContent(String eContent) {
        this.eContent = eContent;
    }

    public Date geteTime() {
        return eTime;
    }

    public void seteTime(Date eTime) {
        this.eTime = eTime;
    }

    public float getOther1() {
        return other1;
    }

    public void setOther1(float other1) {
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

    @Override
    public String toString() {
        return "Evalution{" +
                "userId=" + userId +
                ", pCode='" + pCode + '\'' +
                ", eContent='" + eContent + '\'' +
                ", eTime=" + eTime +
                ", other1='" + other1 + '\'' +
                ", other2='" + other2 + '\'' +
                ", other3='" + other3 + '\'' +
                ", other4='" + other4 + '\'' +
                '}';
    }


}
