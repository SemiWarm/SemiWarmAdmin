package cn.semiwarm.admin.controller;

import cn.semiwarm.admin.entity.Response;
import cn.semiwarm.admin.entity.SubCategory;
import cn.semiwarm.admin.service.impl.SubCategoryServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 子类目控制器
 * Created by alibct on 2017/4/6.
 */
@Controller
public class SubCategoryController {

    private final SubCategoryServiceImpl subCategoryService;

    @Autowired
    public SubCategoryController(SubCategoryServiceImpl subCategoryService) {
        this.subCategoryService = subCategoryService;
    }

    @RequestMapping(value = "/subCategories", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    @ResponseBody
    public Response<SubCategory> addSubCategory(SubCategory subCategory) throws Exception {
        Response<SubCategory> subCategoryResponse = new Response<SubCategory>();
        if (subCategory != null) {
            subCategory.setStatus(true);
            int result = subCategoryService.addSubCategory(subCategory);
            if (result > 0) {
                subCategoryResponse.setSuccess(1);
                subCategoryResponse.setMessage("子类目添加成功!");
                subCategoryResponse.setData(subCategory);
            } else {
                subCategoryResponse.setSuccess(1);
                subCategoryResponse.setMessage("子类目添加失败!");
                subCategoryResponse.setData(null);
            }
        } else {
            subCategoryResponse.setSuccess(1);
            subCategoryResponse.setMessage("子类目添加失败!");
            subCategoryResponse.setData(null);
        }
        return subCategoryResponse;
    }
}
