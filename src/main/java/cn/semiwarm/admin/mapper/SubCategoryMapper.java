package cn.semiwarm.admin.mapper;

import cn.semiwarm.admin.entity.SubCategory;

import java.io.Serializable;
import java.util.List;

/**
 * 子类目
 * Created by alibct on 2017/4/6.
 */
public interface SubCategoryMapper extends BaseMapper<SubCategory> {

    int add(SubCategory subCategory);

    int delete(SubCategory subCategory);

    int update(SubCategory subCategory);

    SubCategory findById(Serializable id);

    List<SubCategory> findAll();
}
