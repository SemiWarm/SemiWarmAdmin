package cn.semiwarm.admin.entity;

import java.io.Serializable;

/**
 * 商品规格
 * Created by alibct on 2017/5/10.
 */
public class GoodsSpec implements Serializable {

    private Long specId;
    private String specName;
    private String specDesc;
    private Boolean status;

    public Long getSpecId() {
        return specId;
    }

    public void setSpecId(Long specId) {
        this.specId = specId;
    }

    public String getSpecName() {
        return specName;
    }

    public void setSpecName(String specName) {
        this.specName = specName;
    }

    public String getSpecDesc() {
        return specDesc;
    }

    public void setSpecDesc(String specDesc) {
        this.specDesc = specDesc;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "GoodsSpec{" +
                "specId=" + specId +
                ", specName='" + specName + '\'' +
                ", specDesc='" + specDesc + '\'' +
                ", status=" + status +
                '}';
    }
}
