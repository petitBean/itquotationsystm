package com.orz.bean;

/**
 * @author Wangxingze
 * @date 2019-07-03 10:20
 */
public class Gpu{

    /**
     * GPU编号
     */
    private String gpuCode;
    /**
     * GPU厂家
     */
    private String gpuFactory;
    /**
     * GPU代号
     */
    private String gpuName;
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



    public Gpu() {
    }

    public Gpu(String gpuCode, String gpuFactory, String gpuName,
               String other1, String other2, String other3) {
        this.gpuCode = gpuCode;
        this.gpuFactory = gpuFactory;
        this.gpuName = gpuName;
        this.other1 = other1;
        this.other2 = other2;
        this.other3 = other3;
    }

    public String getGpuCode() {
        return gpuCode;
    }

    public void setGpuCode(String gpuCode) {
        this.gpuCode = gpuCode;
    }

    public String getGpuFactory() {
        return gpuFactory;
    }

    public void setGpuFactory(String gpuFactory) {
        this.gpuFactory = gpuFactory;
    }

    public String getGpuName() {
        return gpuName;
    }

    public void setGpuName(String gpuName) {
        this.gpuName = gpuName;
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

    @Override
    public String toString() {
        return "Gpu{" +
                "gpuCode='" + gpuCode + '\'' +
                ", gpuFactory='" + gpuFactory + '\'' +
                ", gpuName='" + gpuName + '\'' +
                ", other1='" + other1 + '\'' +
                ", other2='" + other2 + '\'' +
                ", other3='" + other3 + '\'' +
                '}';
    }


}
