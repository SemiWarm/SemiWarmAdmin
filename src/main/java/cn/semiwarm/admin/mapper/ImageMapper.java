package cn.semiwarm.admin.mapper;

import cn.semiwarm.admin.entity.Image;

import java.io.Serializable;
import java.util.List;

/**
 * 图片类Mapper
 * Created by alibct on 2017/4/8.
 */
public interface ImageMapper extends BaseMapper<Image> {

    int add(Image image);

    int delete(Image image);

    int update(Image image);

    Image findById(Serializable id);

    List<Image> findAll();

    List<Image> findByImageType(Serializable imageType);
}
