package com.orz.bean;

/**
 * @author Wangxingze
 * @date 2019-07-04 17:01
 */
public class CPU {
    /**
     * CPU编号
     */
    private String CPUCode;
    /**
     * CPU厂家
     */
    private String CPUFactory;
    /**
     * CPU系列
     */
    private String CPUSeries;
    /**
     * CPU代号
     */
    private String CPUi;
    /**
     * CPU代数
     */
    private Integer CPUGenerationn;
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

    public CPU(String CPUCode, String CPUFactory, String CPUSeries, String CPUi, Integer CPUGenerationn) {
        this.CPUCode = CPUCode;
        this.CPUFactory = CPUFactory;
        this.CPUSeries = CPUSeries;
        this.CPUi = CPUi;
        this.CPUGenerationn = CPUGenerationn;
    }

    public CPU() {
    }

    public String getCPUCode() {
        return CPUCode;
    }

    public void setCPUCode(String CPUCode) {
        this.CPUCode = CPUCode;
    }

    public String getCPUFactory() {
        return CPUFactory;
    }

    public void setCPUFactory(String CPUFactory) {
        this.CPUFactory = CPUFactory;
    }

    public String getCPUSeries() {
        return CPUSeries;
    }

    public void setCPUSeries(String CPUSeries) {
        this.CPUSeries = CPUSeries;
    }

    public String getCPUi() {
        return CPUi;
    }

    public void setCPUi(String CPUi) {
        this.CPUi = CPUi;
    }

    public Integer getCPUGenerationn() {
        return CPUGenerationn;
    }

    public void setCPUGenerationn(Integer CPUGenerationn) {
        this.CPUGenerationn = CPUGenerationn;
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
}
