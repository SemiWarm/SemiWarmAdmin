package cn.semiwarm.admin.service.impl;

import cn.semiwarm.admin.entity.Image;
import cn.semiwarm.admin.mapper.ImageMapper;
import cn.semiwarm.admin.service.ImageService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.List;

/**
 * 图片服务类实现类
 * Created by alibct on 2017/4/8.
 */
@Service("imageService")
public class ImageServiceImpl implements ImageService {

    private final ImageMapper imageMapper;

    @Autowired
    public ImageServiceImpl(ImageMapper imageMapper) {
        this.imageMapper = imageMapper;
    }

    public int addImage(Image image) throws Exception {
        return imageMapper.add(image);
    }

    public int deleteImage(Image image) throws Exception {
        return imageMapper.delete(image);
    }

    public int updateImage(Image image) throws Exception {
        return imageMapper.update(image);
    }

    public Image getImageById(Serializable id) throws Exception {
        return imageMapper.findById(id);
    }

    public List<Image> getAllImages() throws Exception {
        return imageMapper.findAll();
    }

    public PageInfo<Image> getImagesByType(Serializable imageType, int pageNum, int pageSize) throws Exception {
        PageHelper.startPage(pageNum, pageSize);
        List<Image> images = imageMapper.findByImageType(imageType);
        return new PageInfo<Image>(images);
    }
}
