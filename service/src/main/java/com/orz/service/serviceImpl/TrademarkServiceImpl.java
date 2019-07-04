package com.orz.service.serviceImpl;

import com.orz.bean.Trademark;
import com.orz.common.enums.OrzExceptionEnum;
import com.orz.common.exception.OrzException;
import com.orz.dao.TrademarkDao;
import com.orz.service.TrademarkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author Wangxingze
 * @date 2019-07-03 18:29
 */
@Service
public class TrademarkServiceImpl implements TrademarkService {

    @Autowired
    private TrademarkDao trademarkDao;

    @Override
    public List<Trademark> findAllTrademark() {
        return trademarkDao.findAllTrademark();
    }

    @Override
    public List<Trademark> findAllTrademarkBytmName(String trdemarkName) {
        return trademarkDao.findAllTrademarkBytmName(trdemarkName);
    }

    @Override
    public List<Trademark> findAllTrademarkBytmWeb(String trademarkWeb) {
        return trademarkDao.findAllTrademarkBytmWeb(trademarkWeb);
    }

    @Override
    public List<Trademark> findAllTrademarkBytmTel(String trademarkTel) {
        return trademarkDao.findAllTrademarkBytmTel(trademarkTel);
    }

    @Override
    @Transactional
    public void insertOneTrademark(Trademark trademark) throws Exception {

        try{
            trademarkDao.insertOneTrademark(trademark);
        }
        catch (Exception e){
            e.printStackTrace();
            throw new OrzException(OrzExceptionEnum.INSERT_DATA_FAILED);
        }

    }

    @Override
    @Transactional
    public void updateTrademarkBytmCode(Trademark trademark)throws Exception  {
        try{
            trademarkDao.updateTrademarkBytmCode(trademark);
        }
        catch (Exception e){
            e.printStackTrace();
            throw new OrzException(OrzExceptionEnum.UPDATE_DATA_FAILED);
        }

    }

    @Override
    @Transactional
    public void deleteTrademarkBytmCode(String trademarkId) throws Exception {

        try{
            trademarkDao.deleteTrademarkBytmCode(trademarkId);
        }
        catch (Exception e){
            e.printStackTrace();
            throw new OrzException(OrzExceptionEnum.DELETE_DATA_FAILED);
        }
    }
}
