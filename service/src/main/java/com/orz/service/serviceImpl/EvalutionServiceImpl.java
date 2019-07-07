package com.orz.service.serviceImpl;

import com.github.pagehelper.PageHelper;
import com.orz.bean.Evalution;
import com.orz.common.enums.OrzExceptionEnum;
import com.orz.common.exception.OrzException;
import com.orz.dao.EvalutionDao;
import com.orz.service.EvalutionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * @author Wangxingze
 * @date 2019-07-03 18:34
 */
@Service
public class EvalutionServiceImpl implements EvalutionService {

    @Autowired
    private EvalutionDao evalutionDao;

    @Override
    public List<Evalution> findAllEvalution() {
        return evalutionDao.findAllEvalution();
    }

    @Override
    public List<Evalution> findAllEvalutionByuserId(Integer userId) {
        return evalutionDao.findAllEvalutionByuserId(userId);
    }

    @Override
    public Evalution findOneEvalutionBypCode(String pCode) {
        return evalutionDao.findOneEvalutionBypCode(pCode);
    }

    @Override
    public List<Evalution> findAllEvalutionByeContent(String eContent) {
        return evalutionDao.findAllEvalutionByeContent(eContent);
    }

    @Override
    public List<Evalution> findAllEvalutionByeTime(Date eTime)  {
        return evalutionDao.findAllEvalutionByeTime(eTime);
    }


    @Override
    @Transactional
    public void insertOneEvalution(Evalution evalution) throws Exception {
        try{
            evalutionDao.insertOneEvalution(evalution);
        }
        catch (Exception e){
            e.printStackTrace();
            System.out.println(e.getCause());
            throw new OrzException(OrzExceptionEnum.INSERT_DATA_FAILED);
        }
    }

    @Override
    @Transactional
    public void updateEvalutionBypCode(Evalution evalution) throws Exception {
        try{
            evalutionDao.updateEvalutionBypCode(evalution);
        }
        catch (Exception e){
            e.printStackTrace();
            System.out.println(e.getCause());
            throw new OrzException(OrzExceptionEnum.UPDATE_DATA_FAILED);
        }
    }

    @Override
    @Transactional
    public void deleteEvalutionBypCode(String pCode) throws Exception{
        try{
            evalutionDao.deleteEvalutionBypCode(pCode);
        }
        catch (Exception e){
            e.printStackTrace();
            System.out.println(e.getCause());
            throw new OrzException(OrzExceptionEnum.DELETE_DATA_FAILED);
        }
    }

    /**
     * 分页查询
     * @param pageNum
     * @param size
     * @return
     */
    @Override
    public List<Evalution> findOnePageByHeuper(Integer pageNum, Integer size ,String pCode) {
        PageHelper.startPage(pageNum,size);
        return evalutionDao.findListBypCode(pCode);
    }

    @Override
    public Evalution findOneEvalutionByuserIdAndpCode(Integer userId, String pCode) {
        return evalutionDao.findOneEvalutionByuserIdAndpCode(userId,pCode);
    }

    @Override
    @Transactional
    public void updateEvalutionByUserIdAndpCode(Evalution evalution) throws Exception {
        try{
            evalutionDao.updateEvalutionByUserIdAndpCode(evalution);
        }
        catch (Exception e){
            e.printStackTrace();
            System.out.println(e.getCause());
            throw new OrzException(OrzExceptionEnum.UPDATE_DATA_FAILED);
        }
    }
}
