package cn.semiwarm.admin.controller;

import cn.semiwarm.admin.entity.Category;
import cn.semiwarm.admin.entity.Response;
import cn.semiwarm.admin.service.impl.CategoryServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 类目控制器
 * Created by alibct on 2017/4/6.
 */
@Controller
public class CategoryController {

    private final CategoryServiceImpl categoryService;

    @Autowired
    public CategoryController(CategoryServiceImpl categoryService) {
        this.categoryService = categoryService;
    }


    /**
     * 获取所有类目信息
     *
     * @return 所有类目信息
     * @throws Exception 异常
     */
    @RequestMapping(value = "/categories", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
    @ResponseBody
    public List<Category> findAllCategory() throws Exception {
        return categoryService.findAllCategory();
    }

    /**
     * 添加类目
     *
     * @param category 提交的表单
     * @return 添加结果
     * @throws Exception 异常
     */
    @RequestMapping(value = "/categories", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    @ResponseBody
    public Response<Category> addCategory(Category category) throws Exception {
        Response<Category> categoryResponse = new Response<Category>();
        if (category != null) {
            int result = categoryService.addCategory(category);
            if (result > 0) {
                categoryResponse.setSuccess(1);
                categoryResponse.setMessage("类目添加成功!");
                categoryResponse.setData(category);
            } else {
                categoryResponse.setSuccess(1);
                categoryResponse.setMessage("类目添加失败!");
                categoryResponse.setData(null);
            }
        } else {
            categoryResponse.setSuccess(1);
            categoryResponse.setMessage("类目添加失败!");
            categoryResponse.setData(null);
        }
        return categoryResponse;
    }
}
