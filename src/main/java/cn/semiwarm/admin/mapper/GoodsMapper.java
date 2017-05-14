package cn.semiwarm.admin.mapper;

import cn.semiwarm.admin.entity.Goods;

import java.io.Serializable;
import java.util.List;

/**
 * 商品Mapper
 * Created by alibct on 2017/5/10.
 */
public interface GoodsMapper extends BaseMapper<Goods> {

    int add(Goods goods);

    int delete(Goods goods);

    int update(Goods goods);

    Goods findById(Serializable id);

    List<Goods> findAll();

    List<Goods> findBySubCategoryId(Integer subCategoryId);
}
