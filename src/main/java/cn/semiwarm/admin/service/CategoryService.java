package cn.semiwarm.admin.service;

import cn.semiwarm.admin.entity.Category;

import java.io.Serializable;
import java.util.List;

/**
 * 类目服务类
 * Created by alibct on 2017/4/6.
 */
public interface CategoryService {
    int addCategory(Category category);

    int deleteCategory(Category category);

    int updateCategory(Category category);

    Category findCategoryById(Serializable id);

    List<Category> findAllCategory();
}
