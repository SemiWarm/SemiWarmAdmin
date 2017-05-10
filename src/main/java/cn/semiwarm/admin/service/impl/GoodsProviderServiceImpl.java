package cn.semiwarm.admin.service.impl;

import cn.semiwarm.admin.entity.GoodsProvider;
import cn.semiwarm.admin.mapper.GoodsProviderMapper;
import cn.semiwarm.admin.service.GoodsProviderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * goodsProviderService
 * Created by alibct on 2017/5/10.
 */
@Service("goodsProviderService")
public class GoodsProviderServiceImpl implements GoodsProviderService {

    private final GoodsProviderMapper goodsProviderMapper;

    @Autowired
    public GoodsProviderServiceImpl(GoodsProviderMapper goodsProviderMapper) {
        this.goodsProviderMapper = goodsProviderMapper;
    }

    public int addGoodsProvider(GoodsProvider goodsProvider) throws Exception {

        Date date = new Date();
        goodsProvider.setProviderId(date.getTime());

        return goodsProviderMapper.add(goodsProvider);
    }

    public List<GoodsProvider> getAllGoodsProvider() throws Exception {
        return goodsProviderMapper.findAll();
    }
}
