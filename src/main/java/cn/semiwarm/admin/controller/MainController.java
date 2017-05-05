package cn.semiwarm.admin.controller;

import cn.semiwarm.admin.entity.Category;
import cn.semiwarm.admin.entity.SubCategory;
import cn.semiwarm.admin.service.impl.CategoryServiceImpl;
import cn.semiwarm.admin.service.impl.SubCategoryServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;

/**
 * 主页控制器
 * Created by alibct on 2017/3/22.
 */
@Controller
public class MainController {

    private final CategoryServiceImpl categoryService;
    private final SubCategoryServiceImpl subCategoryService;

    @Autowired
    public MainController(CategoryServiceImpl categoryService, SubCategoryServiceImpl subCategoryService) {
        this.categoryService = categoryService;
        this.subCategoryService = subCategoryService;
    }

    @RequestMapping(value = "/main", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
    public ModelAndView main() throws Exception {
        return new ModelAndView("main");
    }

    @RequestMapping(value = "/goods", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
    public ModelAndView goods() throws Exception {

        ModelAndView view = new ModelAndView("goods");
        // 这里需要加点数据
        // 首先获取所有类目信息
        List<Category> categories = categoryService.getAllCategories();
        // 初始化HashMap用于存储每一个类目所对应的所有子类目
        HashMap<Category, List<SubCategory>> goodsCategory = new HashMap<Category, List<SubCategory>>();
        // 初始化一个临时存储子类目的数组
        List<SubCategory> subCategories;
        for (Category category : categories) {
            // 根据每一个类目的id查询该分类所属的所有子类目
            subCategories = subCategoryService.getAllSubCategoriesByCategoryId(category.getCategoryId());
            // 根据类目id划分商品分类
            goodsCategory.put(category, subCategories);
        }
        view.addObject("goodsCategory", goodsCategory);
        return view;
    }

    @RequestMapping(value = "/category", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
    public ModelAndView category() throws Exception {
        ModelAndView view = new ModelAndView("category");
        // 需要搞点事情
        // 获取所有分类信息
        List<Category> categories = categoryService.getAllCategories();
        view.addObject("categories", categories);
        return view;
    }

    @RequestMapping(value = "/categoryEdit", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
    public ModelAndView categoryEdit() throws Exception {
        return new ModelAndView("categoryEdit");
    }

    @RequestMapping(value = "/editor", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
    public ModelAndView editor() throws Exception {
        return new ModelAndView("mdEditor");
    }

}
