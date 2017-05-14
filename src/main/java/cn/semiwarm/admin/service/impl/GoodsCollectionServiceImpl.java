package cn.semiwarm.admin.service.impl;

import cn.semiwarm.admin.entity.GoodsCollection;
import cn.semiwarm.admin.entity.GoodsCollections;
import cn.semiwarm.admin.mapper.GoodsCollectionMapper;
import cn.semiwarm.admin.mapper.GoodsCollectionsMapper;
import cn.semiwarm.admin.pojo.GoodsCollectionPOJO;
import cn.semiwarm.admin.service.GoodsCollectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

/**
 * GoodsCollectionServiceImpl
 * Created by alibct on 2017/5/14.
 */
@Service("goodsCollectionService")
public class GoodsCollectionServiceImpl implements GoodsCollectionService {

    private final GoodsCollectionMapper goodsCollectionMapper;
    private final GoodsCollectionsMapper goodsCollectionsMapper;

    @Autowired
    public GoodsCollectionServiceImpl(GoodsCollectionMapper goodsCollectionMapper, GoodsCollectionsMapper goodsCollectionsMapper) {
        this.goodsCollectionMapper = goodsCollectionMapper;
        this.goodsCollectionsMapper = goodsCollectionsMapper;
    }

    public int addGoodsCollection(GoodsCollectionPOJO goodsCollectionPOJO, HttpSession session) throws Exception {

        GoodsCollection goodsCollection = goodsCollectionPOJO.getGoodsCollection();
        List<GoodsCollections> collectionsList = goodsCollectionPOJO.getGoodsCollectionsList();
        Date date = new Date();
        Long collectionId = date.getTime();
        goodsCollection.setCollectionId(collectionId);
        goodsCollection.setCreateBy((Long) session.getAttribute("administratorId"));
        int result = goodsCollectionMapper.add(goodsCollection);
        if (result > 0) {
            for (GoodsCollections collections : collectionsList) {
                collections.setCollectionId(collectionId);
                goodsCollectionsMapper.add(collections);
            }
        }

        return result;
    }
}
