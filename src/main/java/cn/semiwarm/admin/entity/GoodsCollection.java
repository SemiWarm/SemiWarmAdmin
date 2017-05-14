package cn.semiwarm.admin.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 商品集合
 * Created by alibct on 2017/5/14.
 */
public class GoodsCollection implements Serializable {

    private Long collectionId;
    private String collectionName;
    private String collectionTitle;
    private String collectionDesc;
    private String collectionBanner;
    private Long createBy;
    private Date createAt;

    public Long getCollectionId() {
        return collectionId;
    }

    public void setCollectionId(Long collectionId) {
        this.collectionId = collectionId;
    }

    public String getCollectionName() {
        return collectionName;
    }

    public void setCollectionName(String collectionName) {
        this.collectionName = collectionName;
    }

    public String getCollectionTitle() {
        return collectionTitle;
    }

    public void setCollectionTitle(String collectionTitle) {
        this.collectionTitle = collectionTitle;
    }

    public String getCollectionDesc() {
        return collectionDesc;
    }

    public void setCollectionDesc(String collectionDesc) {
        this.collectionDesc = collectionDesc;
    }

    public String getCollectionBanner() {
        return collectionBanner;
    }

    public void setCollectionBanner(String collectionBanner) {
        this.collectionBanner = collectionBanner;
    }

    public Long getCreateBy() {
        return createBy;
    }

    public void setCreateBy(Long createBy) {
        this.createBy = createBy;
    }

    public Date getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }

    @Override
    public String toString() {
        return "GoodsCollection{" +
                "collectionId=" + collectionId +
                ", collectionName='" + collectionName + '\'' +
                ", collectionTitle='" + collectionTitle + '\'' +
                ", collectionDesc='" + collectionDesc + '\'' +
                ", collectionBanner='" + collectionBanner + '\'' +
                ", createBy=" + createBy +
                ", createAt=" + createAt +
                '}';
    }
}
