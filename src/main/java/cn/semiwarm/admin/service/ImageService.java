package cn.semiwarm.admin.service;

import cn.semiwarm.admin.entity.Image;

import java.io.Serializable;
import java.util.List;

/**
 * 图片服务类
 * Created by alibct on 2017/4/8.
 */
public interface ImageService extends BaseService<Image> {

    int addImage(Image image) throws Exception;

    int deleteImage(Image image) throws Exception;

    int updateImage(Image image) throws Exception;

    Image findImageById(Serializable id) throws Exception;

    List<Image> findAllImage() throws Exception;

    List<Image> findImageByImageType(Serializable imageType) throws Exception;
}
