package cn.semiwarm.admin.entity;

import java.io.Serializable;

/**
 * 上传单张图片的返回信息
 * Created by alibct on 2017/3/24.
 */
public class UploadImageResponse implements Serializable{

    private Integer success; // 0 | 1  0 表示上传失败, 1 表示上传成功
    private String message; // 提示信息
    private String url;  // 图片地址，上传成功就返回

    public Integer getSuccess() {
        return success;
    }

    public void setSuccess(Integer success) {
        this.success = success;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "UploadImageResponse{" +
                "success=" + success +
                ", message='" + message + '\'' +
                ", url='" + url + '\'' +
                '}';
    }
}
