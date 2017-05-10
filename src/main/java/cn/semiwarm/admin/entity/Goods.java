package cn.semiwarm.admin.entity;

import java.io.Serializable;

/**
 * 商品表
 * Created by alibct on 2017/5/10.
 */
public class Goods implements Serializable {

    private Long goodsId;
    private Integer subCategoryId;
    private String goodsTitle;
    private String goodsTags;
    private Long providerId;
    private String goodsPrice;
    private String goodsBanners;
    private String goodsDesc;
    private String goodsMarkdownDetail;
    private String goodsHtmlDetail;
    private Boolean status;

    public Long getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }

    public Integer getSubCategoryId() {
        return subCategoryId;
    }

    public void setSubCategoryId(Integer subCategoryId) {
        this.subCategoryId = subCategoryId;
    }

    public String getGoodsTitle() {
        return goodsTitle;
    }

    public void setGoodsTitle(String goodsTitle) {
        this.goodsTitle = goodsTitle;
    }

    public String getGoodsTags() {
        return goodsTags;
    }

    public void setGoodsTags(String goodsTags) {
        this.goodsTags = goodsTags;
    }

    public Long getProviderId() {
        return providerId;
    }

    public void setProviderId(Long providerId) {
        this.providerId = providerId;
    }

    public String getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(String goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    public String getGoodsBanners() {
        return goodsBanners;
    }

    public void setGoodsBanners(String goodsBanners) {
        this.goodsBanners = goodsBanners;
    }

    public String getGoodsDesc() {
        return goodsDesc;
    }

    public void setGoodsDesc(String goodsDesc) {
        this.goodsDesc = goodsDesc;
    }

    public String getGoodsMarkdownDetail() {
        return goodsMarkdownDetail;
    }

    public void setGoodsMarkdownDetail(String goodsMarkdownDetail) {
        this.goodsMarkdownDetail = goodsMarkdownDetail;
    }

    public String getGoodsHtmlDetail() {
        return goodsHtmlDetail;
    }

    public void setGoodsHtmlDetail(String goodsHtmlDetail) {
        this.goodsHtmlDetail = goodsHtmlDetail;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "goodsId=" + goodsId +
                ", subCategoryId=" + subCategoryId +
                ", goodsTitle='" + goodsTitle + '\'' +
                ", goodsTags='" + goodsTags + '\'' +
                ", providerId=" + providerId +
                ", goodsPrice='" + goodsPrice + '\'' +
                ", goodsBanners='" + goodsBanners + '\'' +
                ", goodsDesc='" + goodsDesc + '\'' +
                ", goodsMarkdownDetail='" + goodsMarkdownDetail + '\'' +
                ", goodsHtmlDetail='" + goodsHtmlDetail + '\'' +
                ", status=" + status +
                '}';
    }
}
