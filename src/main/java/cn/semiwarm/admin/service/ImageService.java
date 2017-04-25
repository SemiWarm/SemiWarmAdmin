package cn.semiwarm.admin.service;

import cn.semiwarm.admin.entity.Image;
import com.github.pagehelper.PageInfo;

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

    Image getImageById(Serializable id) throws Exception;

    List<Image> getAllImages() throws Exception;

    // 分页实现
    PageInfo<Image> getImagesByType(Serializable imageType, int pageNum, int pageSize) throws Exception;
}
