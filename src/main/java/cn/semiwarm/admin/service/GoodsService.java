package cn.semiwarm.admin.service;

import cn.semiwarm.admin.entity.Goods;

import java.util.List;

/**
 * GoodsService
 * Created by alibct on 2017/5/10.
 */
public interface GoodsService {
    int addGoods(Goods goods) throws Exception;

    List<Goods> getAllGoodsBySubCategoryId(Integer subCategoryId) throws Exception;
}
