package cn.semiwarm.admin.mapper;

import cn.semiwarm.admin.entity.GoodsCollection;

import java.io.Serializable;
import java.util.List;

/**
 * GoodsCollectionMapper
 * Created by alibct on 2017/5/14.
 */
public interface GoodsCollectionMapper extends BaseMapper<GoodsCollection> {

    int add(GoodsCollection goodsCollection);

    int delete(GoodsCollection goodsCollection);

    int update(GoodsCollection goodsCollection);

    GoodsCollection findById(Serializable id);

    List<GoodsCollection> findAll();
}
