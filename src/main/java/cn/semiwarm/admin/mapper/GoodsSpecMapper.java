package cn.semiwarm.admin.mapper;

import cn.semiwarm.admin.entity.GoodsSpec;

import java.io.Serializable;
import java.util.List;

/**
 * Created by alibct on 2017/5/10.
 */
public interface GoodsSpecMapper extends BaseMapper<GoodsSpec> {

    int add(GoodsSpec goodsSpec);

    int delete(GoodsSpec goodsSpec);

    int update(GoodsSpec goodsSpec);

    GoodsSpec findById(Serializable id);

    List<GoodsSpec> findAll();
}
