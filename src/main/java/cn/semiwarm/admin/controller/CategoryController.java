package cn.semiwarm.admin.controller;

import cn.semiwarm.admin.entity.Category;
import cn.semiwarm.admin.entity.Response;
import cn.semiwarm.admin.utils.CommonStringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;

/**
 * 类目控制器
 * Created by alibct on 2017/4/6.
 */
@Controller
public class CategoryController {

    @RequestMapping(value = "/categories", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    @ResponseBody
    public Response<Category> addCategory(HttpSession session, HttpServletRequest request, HttpServletResponse response, Category category, @RequestParam(value = "categoryBannerName") MultipartFile categoryBanner) throws Exception {

        Response<Category> categoryResponse = new Response<Category>();

        try {

            if (!CommonStringUtils.isEmpty(category.getCategoryName()) && !CommonStringUtils.isEmpty(category.getCategoryTitle()) && !CommonStringUtils.isEmpty(category.getCategoryDesc())) {
                if (!categoryBanner.isEmpty()) {
                    categoryResponse.setSuccess(1);
                    categoryResponse.setMessage("类目添加成功!");
                    categoryResponse.setData(category);
                    // 上传的路径
                    String uploadPath = request.getSession().getServletContext().getRealPath("/file/upload/images/category/");
                    // 获取文件路径
                    File uploadDir = new File(uploadPath);
                    // 文件夹不存在则创建文件夹
                    if (!uploadDir.exists()) {
                        boolean result = uploadDir.mkdirs();
                        System.out.println(result);
                    }
                }
            } else {
                categoryResponse.setSuccess(0);
                categoryResponse.setMessage("添加类目失败!");
                categoryResponse.setData(null);
            }


        } catch (Exception e) {
            categoryResponse.setSuccess(0);
            categoryResponse.setMessage("添加类目失败!");
            categoryResponse.setData(null);
        }

        System.out.println(categoryResponse);
        return categoryResponse;
    }
}
