package cn.semiwarm.admin.controller;

import cn.semiwarm.admin.entity.Image;
import cn.semiwarm.admin.entity.Response;
import cn.semiwarm.admin.entity.UploadImageResponse;
import cn.semiwarm.admin.service.impl.ImageServiceImpl;
import cn.semiwarm.admin.utils.CommonFileUtils;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 * 文件操作控制器
 * Created by alibct on 2017/3/24.
 */
@Controller
public class FileController {

    private final ImageServiceImpl imageService;

    @Autowired
    public FileController(ImageServiceImpl imageService) {
        this.imageService = imageService;
    }

    /**
     * editormd中上传单张图片的方法
     *
     * @param request     请求信息
     * @param response    响应信息
     * @param uploadImage 上传的图片
     * @return 上传结果
     */
    @RequestMapping(value = "/upload/editormd/images", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    @ResponseBody
    public UploadImageResponse uploadEditormdImages(HttpSession session, HttpServletRequest request, HttpServletResponse response, @RequestParam(value = "editormd-image-file", required = false) MultipartFile uploadImage) throws Exception {

        // 初始化请求结果
        UploadImageResponse imageResponse = new UploadImageResponse();

        try {

            if (!uploadImage.isEmpty()) {

                Image image = initUploadImage(session, request, response, uploadImage, "editormd");

                // 创建待上传的文件
                File uploadFile = new File(image.getImageRealPath());
                FileUtils.copyInputStreamToFile(uploadImage.getInputStream(), uploadFile);

                // 需要将图片持久化到数据库中
                int result = imageService.addImage(image);
                if (result > 0) {
                    imageResponse.setSuccess(1);
                    imageResponse.setMessage("图片上传成功!");
                    imageResponse.setUrl(image.getImageAccessPath());
                } else {
                    imageResponse.setSuccess(0);
                    imageResponse.setMessage("图片上传失败!");
                    imageResponse.setUrl("");
                }

            }

        } catch (Exception e) {
            imageResponse.setSuccess(0);
            imageResponse.setMessage("图片上传失败!");
            imageResponse.setUrl("");
            e.printStackTrace();
        }

        return imageResponse;
    }


    /**
     * 通用上传单张图片的方法
     *
     * @param session     session
     * @param request     request
     * @param response    response
     * @param type        图片的类型
     * @param uploadImage 需要上传的图片
     * @return 上传结果
     */
    @RequestMapping(value = "/upload/{type}/image", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    @ResponseBody
    public UploadImageResponse uploadImage(HttpSession session, HttpServletRequest request, HttpServletResponse response, @PathVariable("type") String type, @RequestParam(value = "image", required = false) MultipartFile uploadImage) throws Exception {
        // 初始化请求结果
        UploadImageResponse imageResponse = new UploadImageResponse();

        try {

            if (!uploadImage.isEmpty()) {

                Image image = initUploadImage(session, request, response, uploadImage, type);

                // 创建待上传的文件
                File uploadFile = new File(image.getImageRealPath());
                FileUtils.copyInputStreamToFile(uploadImage.getInputStream(), uploadFile);

                // 将图片持久化到数据库中
                int result = imageService.addImage(image);

                if (result > 0) {
                    imageResponse.setSuccess(1);
                    imageResponse.setMessage("图片上传成功!");
                    imageResponse.setUrl(image.getImageAccessPath());
                } else {
                    imageResponse.setSuccess(0);
                    imageResponse.setMessage("图片上传异常!");
                    imageResponse.setUrl("");
                }


            } else {
                imageResponse.setSuccess(-1);
                imageResponse.setMessage("请先选择需要上传的图片!");
                imageResponse.setUrl("");
            }

        } catch (Exception e) {
            imageResponse.setSuccess(0);
            imageResponse.setMessage("图片上传失败!");
            imageResponse.setUrl("");
        }

        return imageResponse;
    }

    /**
     * 通用上传多张图片的方法
     *
     * @param session      session
     * @param request      request
     * @param response     response
     * @param type         图片的类型
     * @param uploadImages 需要上传的图片列表
     * @return 上传结果
     */
    @RequestMapping(value = "/upload/{type}/images", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    @ResponseBody
    public Response<List<UploadImageResponse>> uploadImages(HttpSession session, HttpServletRequest request, HttpServletResponse response, @PathVariable("type") String type, @RequestParam(value = "images", required = false) MultipartFile[] uploadImages) throws Exception {

        Response<List<UploadImageResponse>> listResponse = new Response<List<UploadImageResponse>>(); // 初始化响应结果

        try {

            if (null != uploadImages) {
                // 初始化上传结果
                List<UploadImageResponse> uploadImageResponses = new ArrayList<UploadImageResponse>();
                UploadImageResponse uploadImageResponse;
                for (int i = 0; i < uploadImages.length; i++) {

                    Image image = initUploadImage(session, request, response, uploadImages[i], type);
                    // 创建待上传的文件
                    File uploadFile = new File(image.getImageRealPath());
                    FileUtils.copyInputStreamToFile(uploadImages[i].getInputStream(), uploadFile);

                    // 将图片持久化到数据库中
                    int result = imageService.addImage(image);
                    uploadImageResponse = new UploadImageResponse();
                    if (result > 0) {
                        uploadImageResponse.setSuccess(1);
                        uploadImageResponse.setMessage("第" + i + 1 + "张图片上传成功!");
                        uploadImageResponse.setUrl(image.getImageAccessPath());
                    } else {
                        uploadImageResponse.setSuccess(0);
                        uploadImageResponse.setMessage("第" + i + 1 + "张图片上传失败!");
                        uploadImageResponse.setUrl("");
                    }
                    uploadImageResponses.add(uploadImageResponse);
                }
                listResponse.setSuccess(1);
                listResponse.setMessage("上传结果");
                listResponse.setData(uploadImageResponses);

            } else {
                listResponse.setSuccess(-1);
                listResponse.setMessage("上传失败!请至少选择3张图片进行上传!");
                listResponse.setData(null);
            }

        } catch (Exception e) {
            listResponse.setSuccess(0);
            listResponse.setMessage("上传失败!");
            listResponse.setData(null);
        }

        return listResponse;
    }

    /**
     * 初始化上传的图片信息
     *
     * @param session  session
     * @param request  request
     * @param response response
     * @param image    需要上传的图片
     * @param type     图片类型
     * @return 实例化的图片
     */
    private Image initUploadImage(HttpSession session, HttpServletRequest request, HttpServletResponse response, MultipartFile image, String type) {

        // 设置头信息
        response.setHeader("Content-Type", "text/html");

        // 根据图片类型初始化上传路径
        String realPath = "/file/upload/images/".concat(type).concat("/");
        // 上传的路径
        String uploadPath = request.getSession().getServletContext().getRealPath(realPath);
        // 根据上传路径初始化File对象
        File uploadDir = new File(uploadPath);
        // 如果文件夹不存在则创建文件夹
        if (!uploadDir.exists()) {
            boolean result = uploadDir.mkdirs();
            if (result) {
                System.out.println("文件夹创建成功!");
            } else {
                System.out.println("文件夹已存在!");
            }
        }

        Image result = new Image();

        // 图片原始名称
        String imageOriginalName = image.getOriginalFilename();
        // 图片扩展名
        String imageExtensionName = CommonFileUtils.getExtensionName(imageOriginalName);
        // 图片存储名称
        String imageName = UUID.randomUUID().toString().concat(".").concat(imageExtensionName);
        // 图片物理路径
        String imageRealPath = uploadPath.concat(imageName);
        // 图片访问路径
        String imageAccessPath = "http://www.semiwarm.cn/admin/upload/images/".concat(type).concat("/").concat(imageName);
        // 图片大小
        String imageSize = CommonFileUtils.formatFileSizeToString(image.getSize());
        // 图片上传人
        String uploadedBy = (String) session.getAttribute("administratorName");
        // 图片上传日期
        // 数据库中有一个当前日期类型

        result.setImageUuid(UUID.randomUUID().toString());
        result.setImageOriginalName(imageOriginalName);
        result.setImageName(imageName);
        result.setImageExtensionName(imageExtensionName);
        result.setImageRealPath(imageRealPath);
        result.setImageAccessPath(imageAccessPath);
        result.setImageSize(imageSize);
        result.setImageType(type);
        result.setUploadedBy(uploadedBy);
        result.setStatus(true);

        return result;

    }
}
