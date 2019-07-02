package com.orz.common.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author Wangxingze
 * @date 2019-07-02 16:19
 */
public class RegexUtil {

    /**
     * 验证是否是数字和字母组合
     */
    public static boolean isDigitAndWord(String s){
        String reg="^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{5,16}$";
        Pattern pattern=Pattern.compile(reg);
        try {
            Matcher mather = pattern.matcher(s);
            if (mather.find()){
                return true;
            }
        }
        catch (Exception e){
            return false;
        }
        return false;
    }

    /**
     * 验证字符串全部5位数字
     * @param s
     * @return
     */
    public static boolean isFullDigit(String s){
        String reg="\\d{5}";
        Pattern pattern=Pattern.compile(reg);
        try {
            Matcher mather = pattern.matcher(s);
            if (mather.find()){
                return true;
            }
        }
        catch (Exception e){
            return false;
        }
        return false;
    }



}
