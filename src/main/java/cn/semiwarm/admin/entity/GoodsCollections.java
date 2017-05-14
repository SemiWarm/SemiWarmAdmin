package cn.semiwarm.admin.entity;

import java.util.Date;

/**
 * 商品与商品集合对应关系
 * Created by alibct on 2017/5/14.
 */
public class GoodsCollections {
    private Integer id;
    private Long goodsId;
    private Long collectionId;
    private Date createAt;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }

    public Long getCollectionId() {
        return collectionId;
    }

    public void setCollectionId(Long collectionId) {
        this.collectionId = collectionId;
    }

    public Date getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }

    @Override
    public String toString() {
        return "GoodsCollections{" +
                "id=" + id +
                ", goodsId=" + goodsId +
                ", collectionId=" + collectionId +
                ", createAt=" + createAt +
                '}';
    }
}
