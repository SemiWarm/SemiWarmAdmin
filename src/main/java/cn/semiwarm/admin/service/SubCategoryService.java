package cn.semiwarm.admin.service;

import cn.semiwarm.admin.entity.SubCategory;

import java.io.Serializable;
import java.util.List;

/**
 * 子类目服务类
 * Created by alibct on 2017/4/6.
 */
public interface SubCategoryService {
    int addSubCategory(SubCategory subCategory);

    int deleteSubCategory(SubCategory subCategory);

    int updateSubCategory(SubCategory subCategory);

    SubCategory findSubCategoryById(Serializable id);

    List<SubCategory> findAllSubCategory();
}
