package cn.semiwarm.admin.mapper;

import cn.semiwarm.admin.entity.Category;

import java.io.Serializable;
import java.util.List;

/**
 * 类目
 * Created by alibct on 2017/4/6.
 */
public interface CategoryMapper extends BaseMapper<Category> {

    int add(Category category);

    int delete(Category category);

    int update(Category category);

    Category findById(Serializable id);

    List<Category> findAll();
}
