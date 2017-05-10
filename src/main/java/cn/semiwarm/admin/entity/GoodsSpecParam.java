package cn.semiwarm.admin.entity;

import java.io.Serializable;

/**
 * 商品规格参数
 * Created by alibct on 2017/5/10.
 */
public class GoodsSpecParam implements Serializable {

    private Long specParamId;
    private String specParamName;
    private String specParamValue;
    private Integer goodsQuantity;
    private Long goodsId;
    private Boolean status;

    public Long getSpecParamId() {
        return specParamId;
    }

    public void setSpecParamId(Long specParamId) {
        this.specParamId = specParamId;
    }

    public String getSpecParamName() {
        return specParamName;
    }

    public void setSpecParamName(String specParamName) {
        this.specParamName = specParamName;
    }

    public String getSpecParamValue() {
        return specParamValue;
    }

    public void setSpecParamValue(String specParamValue) {
        this.specParamValue = specParamValue;
    }

    public Integer getGoodsQuantity() {
        return goodsQuantity;
    }

    public void setGoodsQuantity(Integer goodsQuantity) {
        this.goodsQuantity = goodsQuantity;
    }

    public Long getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "GoodsSpecParam{" +
                "specParamId=" + specParamId +
                ", specParamName='" + specParamName + '\'' +
                ", specParamValue='" + specParamValue + '\'' +
                ", goodsQuantity=" + goodsQuantity +
                ", goodsId=" + goodsId +
                ", status=" + status +
                '}';
    }
}
