package com.orz.service.serviceImpl;

import com.orz.bean.CPU;
import com.orz.common.enums.OrzExceptionEnum;
import com.orz.common.exception.OrzException;
import com.orz.dao.CPUDao;
import com.orz.service.CPUService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author Wangxingze
 * @date 2019-07-03 18:33
 */
@Service
public class CPUServiceImpl implements CPUService {

    @Autowired
    private CPUDao CPUDao;

    /**
     * 查询所有CPU
     * @return
     */
    @Override
    public  List<CPU> findAll(){
        return CPUDao.findAll();
    }

    /**
     * 插入一个CPU
     * @param CPU
     */
    @Override
    @Transactional
    public void insertOneCPU(CPU CPU)throws Exception {
        try{
            CPUDao.insertOneCPU(CPU);
        }
        catch (Exception e){
            e.printStackTrace();
            System.out.println(e.getCause());
            throw new OrzException(OrzExceptionEnum.INSERT_DATA_FAILED);
        }
    }

    @Override
    public CPU findOneCPUByCPUCode(String CPUCode) {
        return CPUDao.findOneCPUByCPUCode(CPUCode);
    }

    @Override
    public List<CPU> findAllCPUByCPUFactory(String CPUFactory) {
        return null;
    }

    @Override
    public List<CPU> findAllCPUByCPUSeries(String CPUSeries) {
        return null;
    }

    @Override
    public CPU findOneCPUByCPUi(String CPUi) {
        return null;
    }

    @Override
    public CPU findOneCPUByCPUGenerationn(Integer CPUGenerationn) {
        return null;
    }

    @Override
    @Transactional
    public void updateCPUByCode(CPU CPU) throws Exception{
        try{
            CPUDao.updateCPUByCode(CPU);
        }
        catch (Exception e){
            e.printStackTrace();
            System.out.println(e.getCause());
            throw new OrzException(OrzExceptionEnum.UPDATE_DATA_FAILED);
        }
    }
}
