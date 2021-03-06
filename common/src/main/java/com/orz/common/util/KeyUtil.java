package com.orz.common.util;


import java.util.Random;

public class KeyUtil {

    /**
     * 产生20位的随机字符串
     * @return
     */
    public static String getUniqueKey(){
        Random random=new Random();
        long number=random.nextInt(100000)+100000;
        String key=String.valueOf(number)+System.currentTimeMillis();
        return key;
    }

    /**
     * 产生20位的随机字符串
     * @return
     */
    public static String getPCodeKey(){
        Random random=new Random();
       // long number=random.nextInt(100000)+100000;
        String key=String.valueOf(System.currentTimeMillis());
        return key.substring(key.length()-7,key.length());
    }

}
