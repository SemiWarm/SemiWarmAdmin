package cn.semiwarm.admin.service.impl;

import cn.semiwarm.admin.entity.SubCategory;
import cn.semiwarm.admin.mapper.SubCategoryMapper;
import cn.semiwarm.admin.service.SubCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.List;

/**
 * 子类目服务类实现类
 * Created by alibct on 2017/4/6.
 */
@Service("subCategoryService")
public class SubCategoryServiceImpl implements SubCategoryService {

    private final SubCategoryMapper subCategoryMapper;

    @Autowired
    public SubCategoryServiceImpl(SubCategoryMapper subCategoryMapper) {
        this.subCategoryMapper = subCategoryMapper;
    }

    public int addSubCategory(SubCategory subCategory) throws Exception {
        return subCategoryMapper.add(subCategory);
    }

    public int deleteSubCategory(SubCategory subCategory) throws Exception {
        return subCategoryMapper.delete(subCategory);
    }

    public int updateSubCategory(SubCategory subCategory) throws Exception {
        return subCategoryMapper.update(subCategory);
    }

    public SubCategory getSubCategoryById(Serializable id) throws Exception {
        return subCategoryMapper.findById(id);
    }

    public List<SubCategory> getAllSubCategories() throws Exception {
        return subCategoryMapper.findAll();
    }

    public List<SubCategory> getAllSubCategoriesByCategoryId(Integer categoryId) throws Exception {
        return subCategoryMapper.findByCategoryId(categoryId);
    }
}
