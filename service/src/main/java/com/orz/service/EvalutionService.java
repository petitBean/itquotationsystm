package com.orz.service;

import com.orz.bean.Evalution;

import java.util.Date;
import java.util.List;

public interface EvalutionService {


    /**
     * 查找所有
     * @return
     */
    List<Evalution> findAllEvalution();

    /**
     * 通过用户id查找
     * @param userId
     * @return
     */
    List<Evalution> findAllEvalutionByuserId(Integer userId);

    /**
     * 通过产品代码查找
     * @param pCode
     * @return
     */
    Evalution findOneEvalutionBypCode(String pCode);

    /**
     * 新增
     * @param evalution
     */
    void insertOneEvalution(Evalution evalution) throws Exception;

    /**
     * 根据产品代码更新
     * @param evalution
     */
    void updateEvalutionBypCode(Evalution evalution) throws Exception;

    /**
     * 通过产品代码删除
     * @param pCode
     */
    void deleteEvalutionBypCode (String pCode) throws Exception;

    List<Evalution> findAllEvalutionByeContent(String eContent);

    List<Evalution> findAllEvalutionByeTime(Date eTime);

    void updateEvalutionByUserIdAndpCode(Evalution evalution)throws Exception;

    /**
     * 分页查询
     * @param page
     * @param size
     * @return
     */
    List<Evalution> findOnePageByHeuper(Integer page,Integer size,String pCode);

    Evalution findOneEvalutionByuserIdAndpCode(Integer userId,String pCode);

}
