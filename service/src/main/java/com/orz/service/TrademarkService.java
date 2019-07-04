package com.orz.service;

import com.orz.bean.Trademark;

import java.util.List;

public interface TrademarkService {

    /**
     * 查询所有
     * @return
     */
    List<Trademark> findAllTrademark();

    /**
     * 查询所有通过tmName
     * @return
     */
    List<Trademark>findAllTrademarkBytmName(String tmName);

    /**
     * 查询所有通过tmWeb
     * @return
     */
    List<Trademark>findAllTrademarkBytmWeb(String tmWeb);

    /**
     * 查询所有通过tmTel
     * @return
     */
    List<Trademark> findAllTrademarkBytmTel(String tmTel);

    /**
     * 插入一个新Trademark
     * @param trademark
     */
    void insertOneTrademark(Trademark trademark)throws Exception ;

    /**
     * 通过tmCode更新Trademark信息
     * @param trademark
     */
    void updateTrademarkBytmCode(Trademark trademark)throws Exception ;

    /**
     * 通过tmCode删除Trademark信息
     * @param trademarkId
     */
    void deleteTrademarkBytmCode(String trademarkId)throws Exception ;

}
