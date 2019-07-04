package com.orz.service;

import com.orz.bean.Evalution;

import java.util.Date;
import java.util.List;

public interface EvalutionService {

    List<Evalution> findAllEvalution();
    //通过编号
    List<Evalution> findAllEvalutionByuserId(Integer userId);

    Evalution findOneEvalutionBypCode(String pCode);

    List<Evalution> findAllEvalutionByeContent(String eContent);

    List<Evalution> findAllEvalutionByeTime(Date eTime);

    void insertOneEvalution(Evalution evalution) throws Exception;

    void updateEvalutionBypCode(Evalution evalution) throws Exception;

    void deleteEvalutionBypCode (String pCode)throws Exception;
}
