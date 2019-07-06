package com.orz.common.util;

import com.orz.common.enums.OrzEnum;
import com.orz.common.enums.OrzForbidenFileTypeEnum;

/**
 * Orz枚举工具类
 * @author Wangxingze
 * @date 2019-07-06 15:00
 */
public class EnumUtil {

    public static <T extends OrzEnum,F> boolean contain( T orzEnum,F value){

       // for (T e: orzEnum.getValue() )
        //TODO
        return true;
    }


    /**
     * 判断是否属于禁止上传的文件类型
     * @param suffix
     * @return
     */
    public static boolean OrzForbEnumContain(String suffix){
        for (OrzForbidenFileTypeEnum orzEnum: OrzForbidenFileTypeEnum.values()){
            if (orzEnum.getSuffix().equals(suffix)){
                return true;
            }
        }
        return false;
    }


}
