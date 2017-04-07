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

    public int addSubCategory(SubCategory subCategory) {
        return subCategoryMapper.add(subCategory);
    }

    public int deleteSubCategory(SubCategory subCategory) {
        return subCategoryMapper.delete(subCategory);
    }

    public int updateSubCategory(SubCategory subCategory) {
        return subCategoryMapper.update(subCategory);
    }

    public SubCategory findSubCategoryById(Serializable id) {
        return subCategoryMapper.findById(id);
    }

    public List<SubCategory> findAllSubCategory() {
        return subCategoryMapper.findAll();
    }
}
