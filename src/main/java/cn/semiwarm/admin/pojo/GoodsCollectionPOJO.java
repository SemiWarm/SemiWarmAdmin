package cn.semiwarm.admin.pojo;

import cn.semiwarm.admin.entity.GoodsCollection;
import cn.semiwarm.admin.entity.GoodsCollections;

import java.io.Serializable;
import java.util.List;

/**
 * GoodsCollectionPOJO
 * Created by alibct on 2017/5/14.
 */
public class GoodsCollectionPOJO implements Serializable {

    private GoodsCollection goodsCollection;
    private List<GoodsCollections> goodsCollectionsList;

    public GoodsCollection getGoodsCollection() {
        return goodsCollection;
    }

    public void setGoodsCollection(GoodsCollection goodsCollection) {
        this.goodsCollection = goodsCollection;
    }

    public List<GoodsCollections> getGoodsCollectionsList() {
        return goodsCollectionsList;
    }

    public void setGoodsCollectionsList(List<GoodsCollections> goodsCollectionsList) {
        this.goodsCollectionsList = goodsCollectionsList;
    }

    @Override
    public String toString() {
        return "GoodsCollectionPOJO{" +
                "goodsCollection=" + goodsCollection +
                ", goodsCollectionsList=" + goodsCollectionsList +
                '}';
    }
}
