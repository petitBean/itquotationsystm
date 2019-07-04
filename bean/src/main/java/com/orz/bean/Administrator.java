package com.orz.bean;

/**
 * @author Wangxingze
 * @date 2019-07-03 10:22
 */
public class Administrator {

    private Integer aId;
    private String aName;
    private String aPassword;
    private String other1;
    private String other2;

    public Administrator() {
    }

    public Administrator(Integer aId, String aName, String aPassword,
                         String other1, String other2) {
        this.aId = aId;
        this.aName = aName;
        this.aPassword = aPassword;
        this.other1 = other1;
        this.other2 = other2;
    }

    public Integer getaId() {
        return aId;
    }

    public void setaId(Integer aId) {
        this.aId = aId;
    }

    public String getaName() {
        return aName;
    }

    public void setaName(String aName) {
        this.aName = aName;
    }

    public String getaPassword() {
        return aPassword;
    }

    public void setaPassword(String aPassword) {
        this.aPassword = aPassword;
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

    @Override
    public String toString() {
        return "Administrator{" +
                "aId=" + aId +
                ", aName='" + aName + '\'' +
                ", aPassword='" + aPassword + '\'' +
                ", other1='" + other1 + '\'' +
                ", other2='" + other2 + '\'' +
                '}';
    }
}
