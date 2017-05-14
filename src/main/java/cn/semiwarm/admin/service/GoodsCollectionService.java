package cn.semiwarm.admin.service;

import cn.semiwarm.admin.pojo.GoodsCollectionPOJO;

import javax.servlet.http.HttpSession;

/**
 * GoodsCollectionService
 * Created by alibct on 2017/5/14.
 */
public interface GoodsCollectionService {
    int addGoodsCollection(GoodsCollectionPOJO goodsCollectionPOJO, HttpSession session) throws Exception;
}
