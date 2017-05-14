package cn.semiwarm.admin.service.impl;

import cn.semiwarm.admin.entity.Goods;
import cn.semiwarm.admin.mapper.GoodsMapper;
import cn.semiwarm.admin.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * GoodsServiceImpl
 * Created by alibct on 2017/5/10.
 */
@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {

    private final GoodsMapper goodsMapper;

    @Autowired
    public GoodsServiceImpl(GoodsMapper goodsMapper) {
        this.goodsMapper = goodsMapper;
    }

    public int addGoods(Goods goods) throws Exception {
        return goodsMapper.add(goods);
    }

    public List<Goods> getAllGoodsBySubCategoryId(Integer subCategoryId) throws Exception {
        return goodsMapper.findBySubCategoryId(subCategoryId);
    }
}
