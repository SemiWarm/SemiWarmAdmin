package cn.semiwarm.admin.service.impl;

import cn.semiwarm.admin.entity.Category;
import cn.semiwarm.admin.mapper.CategoryMapper;
import cn.semiwarm.admin.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.List;

/**
 * 类目服务类实现类
 * Created by alibct on 2017/4/6.
 */
@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {

    private final CategoryMapper categoryMapper;

    @Autowired
    public CategoryServiceImpl(CategoryMapper categoryMapper) {
        this.categoryMapper = categoryMapper;
    }

    public int addCategory(Category category) {
        return categoryMapper.add(category);
    }

    public int deleteCategory(Category category) {
        return categoryMapper.delete(category);
    }

    public int updateCategory(Category category) {
        return categoryMapper.update(category);
    }

    public Category findCategoryById(Serializable id) {
        return categoryMapper.findById(id);
    }

    public List<Category> findAllCategory() {
        return categoryMapper.findAll();
    }
}
