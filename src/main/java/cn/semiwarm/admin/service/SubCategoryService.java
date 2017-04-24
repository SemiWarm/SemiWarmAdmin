package cn.semiwarm.admin.service;

import cn.semiwarm.admin.entity.SubCategory;

import java.io.Serializable;
import java.util.List;

/**
 * 子类目服务类
 * Created by alibct on 2017/4/6.
 */
public interface SubCategoryService extends BaseService<SubCategory> {
    int addSubCategory(SubCategory subCategory) throws Exception;

    int deleteSubCategory(SubCategory subCategory) throws Exception;

    int updateSubCategory(SubCategory subCategory) throws Exception;

    SubCategory getSubCategoryById(Serializable id) throws Exception;

    List<SubCategory> getAllSubCategories() throws Exception;
}
