package cn.semiwarm.admin.service;

import cn.semiwarm.admin.entity.GoodsProvider;

import java.util.List;

/**
 * GoodsProviderService
 * Created by alibct on 2017/5/10.
 */
public interface GoodsProviderService {

    int addGoodsProvider(GoodsProvider goodsProvider) throws Exception;

    List<GoodsProvider> getAllGoodsProvider() throws Exception;
}
