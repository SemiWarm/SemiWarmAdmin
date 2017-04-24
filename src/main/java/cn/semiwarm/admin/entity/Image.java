package cn.semiwarm.admin.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 图片实体类
 * Created by alibct on 2017/4/8.
 */
public class Image implements Serializable {

    private String imageUuid; // 图片uuid
    private String imageOriginalName; // 图片原始名称
    private String imageName; // 图片存储名称
    private String imageExtensionName; // 图片扩展名
    private String imageRealPath; // 图片物理路径
    private String imageAccessPath; // 图片访问路径
    private String imageSize; // 图片大小
    private String imageType; // 图片类型->用于标识图片属于哪个类目
    private String uploadedBy; // 图片上传人
    private Date uploadedAt; // 图片上传日期
    private Boolean status; // 图片是否可用

    public String getImageUuid() {
        return imageUuid;
    }

    public void setImageUuid(String imageUuid) {
        this.imageUuid = imageUuid;
    }

    public String getImageOriginalName() {
        return imageOriginalName;
    }

    public void setImageOriginalName(String imageOriginalName) {
        this.imageOriginalName = imageOriginalName;
    }

    public String getImageName() {
        return imageName;
    }

    public void setImageName(String imageName) {
        this.imageName = imageName;
    }

    public String getImageExtensionName() {
        return imageExtensionName;
    }

    public void setImageExtensionName(String imageExtensionName) {
        this.imageExtensionName = imageExtensionName;
    }

    public String getImageRealPath() {
        return imageRealPath;
    }

    public void setImageRealPath(String imageRealPath) {
        this.imageRealPath = imageRealPath;
    }

    public String getImageAccessPath() {
        return imageAccessPath;
    }

    public void setImageAccessPath(String imageAccessPath) {
        this.imageAccessPath = imageAccessPath;
    }

    public String getImageSize() {
        return imageSize;
    }

    public void setImageSize(String imageSize) {
        this.imageSize = imageSize;
    }

    public String getImageType() {
        return imageType;
    }

    public void setImageType(String imageType) {
        this.imageType = imageType;
    }

    public String getUploadedBy() {
        return uploadedBy;
    }

    public void setUploadedBy(String uploadedBy) {
        this.uploadedBy = uploadedBy;
    }

    public Date getUploadedAt() {
        return uploadedAt;
    }

    public void setUploadedAt(Date uploadedAt) {
        this.uploadedAt = uploadedAt;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Image{" +
                "imageUuid='" + imageUuid + '\'' +
                ", imageOriginalName='" + imageOriginalName + '\'' +
                ", imageName='" + imageName + '\'' +
                ", imageExtensionName='" + imageExtensionName + '\'' +
                ", imageRealPath='" + imageRealPath + '\'' +
                ", imageAccessPath='" + imageAccessPath + '\'' +
                ", imageSize='" + imageSize + '\'' +
                ", imageType='" + imageType + '\'' +
                ", uploadedBy='" + uploadedBy + '\'' +
                ", uploadedAt=" + uploadedAt +
                ", status=" + status +
                '}';
    }
}
