package cn.semiwarm.admin.entity;

import java.io.Serializable;

/**
 * 类目类
 * Created by alibct on 2017/4/1.
 */
public class Category implements Serializable {

    private Integer categoryId; // 分类id
    private String categoryName; // 分类名称
    private String categoryBanner; // 分类Banner
    private String categoryTitle; // 分类标题
    private String categoryDesc; // 分类描述

    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getCategoryBanner() {
        return categoryBanner;
    }

    public void setCategoryBanner(String categoryBanner) {
        this.categoryBanner = categoryBanner;
    }

    public String getCategoryTitle() {
        return categoryTitle;
    }

    public void setCategoryTitle(String categoryTitle) {
        this.categoryTitle = categoryTitle;
    }

    public String getCategoryDesc() {
        return categoryDesc;
    }

    public void setCategoryDesc(String categoryDesc) {
        this.categoryDesc = categoryDesc;
    }

    @Override
    public String toString() {
        return "Category{" +
                "categoryId=" + categoryId +
                ", categoryName='" + categoryName + '\'' +
                ", categoryBanner='" + categoryBanner + '\'' +
                ", categoryTitle='" + categoryTitle + '\'' +
                ", categoryDesc='" + categoryDesc + '\'' +
                '}';
    }
}
