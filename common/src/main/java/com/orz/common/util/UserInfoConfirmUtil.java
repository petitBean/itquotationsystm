package com.orz.common.util;

import com.orz.common.enums.OrzExceptionEnum;
import com.orz.common.exception.OrzException;
import com.orz.common.form.UserForm;

/**
 * @author Wangxingze
 * @date 2019-07-02 16:37
 */
public class UserInfoConfirmUtil {

    /**
     * 注册时验证用户用户名和密码格式
     * @param registerUserForm
     * @return
     */
    public static boolean detectedAll(UserForm registerUserForm){
        String userName=registerUserForm.getUserName();
        String userPsw=registerUserForm.getUserPsw();
        //检验是否为空
        detectedNull(registerUserForm);
        if ( !RegexUtil.isFullDigit(userName)){
            throw new OrzException(OrzExceptionEnum.USER_USERNAME_REG_ERROR);
        }
        if (!RegexUtil.isDigitAndWord(userPsw)){
            throw new OrzException(OrzExceptionEnum.USER_USERPSW_REG_ERROR);
        }
        return true;
    }


    /**
     * 验证用户用户名和密码是否为空
     * @param loginUserForm
     * @return
     */
    public static boolean detectedNull(UserForm loginUserForm){

        String userName=loginUserForm.getUserName();
        String userPsw=loginUserForm.getUserPsw();
        if (userName==null||userName==""){
            //用户名为空
            throw new OrzException(OrzExceptionEnum.USER_USERNAME_NULL);
        }
        if (userPsw==null||userPsw==""){
            //密码为空
            throw new OrzException(OrzExceptionEnum.USER_USERPASW_NULL);
        }
        return true;
    }

}
