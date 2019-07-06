package com.orz.common.util;

import com.orz.common.enums.OrzExceptionEnum;
import com.orz.common.exception.OrzException;
import org.springframework.web.multipart.MultipartFile;

import javax.lang.model.element.NestingKind;
import java.io.File;
import java.util.Random;

/**
 * 文件处理工具
 * @author Wangxingze
 * @date 2019-07-06 09:36
 */
public class FileUtil {


    /**
     * 上传图片到web
     * @param multipartFile
     * @param fileTargetPath
     * @return
     * @throws Exception 上传失败
     */
    public static String uploadFile(MultipartFile multipartFile,String fileTargetPath) throws Exception{

        try {
            //获取源地址（如C:\Users\86137\Desktop\alipay1.png）
            String fileName=multipartFile.getOriginalFilename();
            //获取后缀
            String suffix=fileName.substring(fileName.lastIndexOf('.'));
            if (EnumUtil.OrzForbEnumContain(suffix)){
                return null;//禁止上传
            }
            //路径
            //String path1="D:\\Gitrepository\\itquotationsystm\\common\\uploadSources";
            //String path="D:\\Gitrepository\\itquotationsystm\\web\\src\\main\\webapp\\img\\";
            //获取文件名
        //
            Random random=new Random();
            String finalName=fileName.substring(fileName.lastIndexOf('\\')+1,fileName.lastIndexOf('.'))
                    + String.valueOf(random.nextInt()*100);
            //完整路径
            String uploadPath=fileTargetPath+"/"+finalName+suffix;
            //写文件
            File newFile=new File(uploadPath);
           // System.out.println(uploadPath);
           // System.out.println(file.getContentType());
            multipartFile.transferTo(newFile);
            System.out.println("上传成功！");
            //需要配置的
           // System.out.println("根路径："+System.getProperty("evan.webapp"));
            return "/"+ finalName;
        }
        catch (Exception e){
            System.out.println("文件上传出错");
            e.printStackTrace();
            throw new OrzException(OrzExceptionEnum.FILE_UPLOAD_FAIED);
        }
    }




}
