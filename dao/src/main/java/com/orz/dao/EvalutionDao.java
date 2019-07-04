package com.orz.dao;

import com.orz.bean.Evalution;

import java.util.Date;
import java.util.List;

/**
 * @author Wangxingze
 * @date 2019-07-03 15:04
 */
public interface EvalutionDao {

    List<Evalution> findAllEvalution();
    //通过编号
    List<Evalution> findAllEvalutionByuserId(Integer userId);

    Evalution findOneEvalutionBypCode(String pCode);

    List<Evalution> findAllEvalutionByeContent(String eContent);

    List<Evalution> findAllEvalutionByeTime(Date eTime);

    void insertOneEvalution(Evalution evalution);

    void updateEvalutionBypCode(Evalution evalution);

    void deleteEvalutionBypCode (String pCode);

}
