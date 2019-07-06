package com.orz.dao;

import com.orz.bean.Evalution;

import java.util.Date;
import java.util.List;

/**
 * @author Wangxingze
 * @date 2019-07-03 15:04
 */
public interface EvalutionDao {

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
    void insertOneEvalution(Evalution evalution);

    /**
     * 根据产品代码更新
     * @param evalution
     */
    void updateEvalutionBypCode(Evalution evalution);

    /**
     * 通过产品代码删除
     * @param pCode
     */
    void deleteEvalutionBypCode (String pCode);

    List<Evalution> findAllEvalutionByeContent(String eContent);

    List<Evalution> findAllEvalutionByeTime(Date eTime);


}
