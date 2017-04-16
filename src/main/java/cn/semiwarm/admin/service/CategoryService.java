package cn.semiwarm.admin.service;

import cn.semiwarm.admin.entity.Category;

import java.io.Serializable;
import java.util.List;

/**
 * 类目服务类
 * Created by alibct on 2017/4/6.
 */
public interface CategoryService extends BaseService<Category> {
    int addCategory(Category category) throws Exception;

    int deleteCategory(Category category) throws Exception;

    int updateCategory(Category category) throws Exception;

    Category findCategoryById(Serializable id) throws Exception;

    List<Category> findAllCategory() throws Exception;
}
