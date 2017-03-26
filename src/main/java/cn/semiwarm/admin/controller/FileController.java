package cn.semiwarm.admin.controller;

import cn.semiwarm.admin.entity.UploadImageResponse;
import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.UUID;

/**
 * 文件操作控制器
 * Created by alibct on 2017/3/24.
 */
@Controller
public class FileController {

    /**
     * editormd 上传单张图片的方法
     *
     * @param request     请求信息
     * @param response    响应信息
     * @param uploadImage 上传的图片
     * @return 上传结果
     */
    @RequestMapping(value = "/file/upload/editormd/images", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    @ResponseBody
    public UploadImageResponse uploadEditormdImages(HttpServletRequest request, HttpServletResponse response, @RequestParam(value = "editormd-image-file", required = false) MultipartFile uploadImage) {

        UploadImageResponse imageResponse = new UploadImageResponse();

        response.setHeader("Content-Type", "text/html");
        // 上传的路径
        String uploadPath = request.getSession().getServletContext().getRealPath("/file/upload/images/");
        try {

            File uploadDir = new File(uploadPath);
            // 文件夹不存在则创建文件夹
            if (!uploadDir.exists()) {
                boolean result = uploadDir.mkdirs();
                System.out.println(result);
            }

            // 图片原始名称
            String imageOriginalName = uploadImage.getOriginalFilename();
            // 图片类型
            String imagePrefix = imageOriginalName.substring(imageOriginalName.lastIndexOf(".") + 1, imageOriginalName.length());
            // 图片存储名称
            String imageStoredName = UUID.randomUUID().toString().concat(".").concat(imagePrefix);
            // 图片物理路径
            String imageRealPath = uploadPath.concat(imageStoredName);
            // 图片访问路径
            String imageAccessPath = "http://www.semiwarm.cn/admin/upload/images/".concat(imageStoredName);
            // 图片大小
            Long imageSize = uploadImage.getSize();

            // 创建待上传的文件
            File uploadFile = new File(uploadPath + File.separator + imageStoredName);
            FileUtils.copyInputStreamToFile(uploadImage.getInputStream(),uploadFile);

            imageResponse.setSuccess(1);
            imageResponse.setMessage("图片上传成功！");
            imageResponse.setUrl(imageAccessPath);

            System.out.println(imageOriginalName + "\n" +
                    imagePrefix + "\n" +
                    imageStoredName + "\n" +
                    imageRealPath + "\n" +
                    imageAccessPath + "\n" +
                    imageSize);

        } catch (Exception e) {
            imageResponse.setSuccess(0);
            imageResponse.setMessage("图片上传失败！");
            imageResponse.setUrl("");
            e.printStackTrace();
        }
        return imageResponse;
    }
}
