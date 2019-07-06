package com.orz.common.enums;

/**
 * 禁止上传的文件类型
 */
public enum OrzForbidenFileTypeEnum implements OrzEnum{

    CLASS(0,"class"),
    JSP(1,"jsp"),
    HTML(2,"html"),
    CSS(3,"css"),
    JAR(5,"jar")
    ;

    private Integer code;
    private String suffix;

    OrzForbidenFileTypeEnum(Integer code,String suffix){
        this.code=code;
        this.suffix=suffix;
    }

    public Integer getCode() {
        return code;
    }

    public String getSuffix() {
        return suffix;
    }


    @Override
    public String getValue() {
        return getSuffix();
    }
}
