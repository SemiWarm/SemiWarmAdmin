package cn.semiwarm.admin.mapper;

import cn.semiwarm.admin.entity.GoodsCollections;

import java.io.Serializable;
import java.util.List;

/**
 * GoodsCollectionsMapper
 * Created by alibct on 2017/5/14.
 */
public interface GoodsCollectionsMapper extends BaseMapper<GoodsCollections> {

    int add(GoodsCollections goodsCollections);

    int delete(GoodsCollections goodsCollections);

    int update(GoodsCollections goodsCollections);

    GoodsCollections findById(Serializable id);

    List<GoodsCollections> findAll();
}
