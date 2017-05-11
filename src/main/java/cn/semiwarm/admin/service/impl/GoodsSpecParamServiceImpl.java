package cn.semiwarm.admin.service.impl;

import cn.semiwarm.admin.entity.GoodsSpecParam;
import cn.semiwarm.admin.mapper.GoodsSpecParamMapper;
import cn.semiwarm.admin.service.GoodsSpecParamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by alibct on 2017/5/10.
 */
@Service("goodsSpecParamService")
public class GoodsSpecParamServiceImpl implements GoodsSpecParamService {

    private final GoodsSpecParamMapper goodsSpecParamMapper;

    @Autowired
    public GoodsSpecParamServiceImpl(GoodsSpecParamMapper goodsSpecParamMapper) {
        this.goodsSpecParamMapper = goodsSpecParamMapper;
    }

    public int addGoodsSpecParam(GoodsSpecParam goodsSpecParam) throws Exception {
        return goodsSpecParamMapper.add(goodsSpecParam);
    }
}
