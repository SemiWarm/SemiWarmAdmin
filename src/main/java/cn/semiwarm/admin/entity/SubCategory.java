package cn.semiwarm.admin.entity;

import java.io.Serializable;

/**
 * 子类目类
 * Created by alibct on 2017/4/1.
 */
public class SubCategory implements Serializable {

    private Integer subCategoryId; // 子类目id
    private String subCategoryName; // 子类目名称
    private String subCategoryBanner; // 子类目Banner
    private String subCategoryTitle; // 子类目标题
    private String subCategoryDesc; // 子类目描述
    private String subCategoryIcon; // 子类目图标
    private String subCategoryTag; // 子类目标签
    private Integer categoryId;  // 所属类目
    private Boolean status; // 子类目是否可用

    public Integer getSubCategoryId() {
        return subCategoryId;
    }

    public void setSubCategoryId(Integer subCategoryId) {
        this.subCategoryId = subCategoryId;
    }

    public String getSubCategoryName() {
        return subCategoryName;
    }

    public void setSubCategoryName(String subCategoryName) {
        this.subCategoryName = subCategoryName;
    }

    public String getSubCategoryBanner() {
        return subCategoryBanner;
    }

    public void setSubCategoryBanner(String subCategoryBanner) {
        this.subCategoryBanner = subCategoryBanner;
    }

    public String getSubCategoryTitle() {
        return subCategoryTitle;
    }

    public void setSubCategoryTitle(String subCategoryTitle) {
        this.subCategoryTitle = subCategoryTitle;
    }

    public String getSubCategoryDesc() {
        return subCategoryDesc;
    }

    public void setSubCategoryDesc(String subCategoryDesc) {
        this.subCategoryDesc = subCategoryDesc;
    }

    public String getSubCategoryIcon() {
        return subCategoryIcon;
    }

    public void setSubCategoryIcon(String subCategoryIcon) {
        this.subCategoryIcon = subCategoryIcon;
    }

    public String getSubCategoryTag() {
        return subCategoryTag;
    }

    public void setSubCategoryTag(String subCategoryTag) {
        this.subCategoryTag = subCategoryTag;
    }

    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "SubCategory{" +
                "subCategoryId=" + subCategoryId +
                ", subCategoryName='" + subCategoryName + '\'' +
                ", subCategoryBanner='" + subCategoryBanner + '\'' +
                ", subCategoryTitle='" + subCategoryTitle + '\'' +
                ", subCategoryDesc='" + subCategoryDesc + '\'' +
                ", subCategoryIcon='" + subCategoryIcon + '\'' +
                ", subCategoryTag='" + subCategoryTag + '\'' +
                ", categoryId=" + categoryId +
                ", status=" + status +
                '}';
    }
}
