package cn.semiwarm.admin.entity;

import java.io.Serializable;

/**
 * 商品供应商
 * Created by alibct on 2017/5/10.
 */
public class GoodsProvider implements Serializable {

    private Long providerId;
    private String providerName;
    private String providerProfile;
    private String providerDesc;
    private String providerBanner;
    private String status;

    public Long getProviderId() {
        return providerId;
    }

    public void setProviderId(Long providerId) {
        this.providerId = providerId;
    }

    public String getProviderName() {
        return providerName;
    }

    public void setProviderName(String providerName) {
        this.providerName = providerName;
    }

    public String getProviderProfile() {
        return providerProfile;
    }

    public void setProviderProfile(String providerProfile) {
        this.providerProfile = providerProfile;
    }

    public String getProviderDesc() {
        return providerDesc;
    }

    public void setProviderDesc(String providerDesc) {
        this.providerDesc = providerDesc;
    }

    public String getProviderBanner() {
        return providerBanner;
    }

    public void setProviderBanner(String providerBanner) {
        this.providerBanner = providerBanner;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "GoodsProvider{" +
                "providerId=" + providerId +
                ", providerName='" + providerName + '\'' +
                ", providerProfile='" + providerProfile + '\'' +
                ", providerDesc='" + providerDesc + '\'' +
                ", providerBanner='" + providerBanner + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
