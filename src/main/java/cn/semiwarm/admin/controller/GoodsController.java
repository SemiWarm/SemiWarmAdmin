package cn.semiwarm.admin.controller;

import cn.semiwarm.admin.entity.*;
import cn.semiwarm.admin.service.impl.CategoryServiceImpl;
import cn.semiwarm.admin.service.impl.GoodsProviderServiceImpl;
import cn.semiwarm.admin.service.impl.GoodsSpecServiceImpl;
import cn.semiwarm.admin.service.impl.SubCategoryServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;

/**
 * GoodsController
 * Created by alibct on 2017/5/10.
 */

@Controller
public class GoodsController {

    private final CategoryServiceImpl categoryService;
    private final SubCategoryServiceImpl subCategoryService;
    private final GoodsSpecServiceImpl goodsSpecService;
    private final GoodsProviderServiceImpl goodsProviderService;

    @Autowired
    public GoodsController(CategoryServiceImpl categoryService, SubCategoryServiceImpl subCategoryService, GoodsSpecServiceImpl goodsSpecService, GoodsProviderServiceImpl goodsProviderService) {
        this.categoryService = categoryService;
        this.subCategoryService = subCategoryService;
        this.goodsSpecService = goodsSpecService;
        this.goodsProviderService = goodsProviderService;
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
        // ******我是分割线******
        // 获取供应商和规格
        List<GoodsProvider> goodsProviders = goodsProviderService.getAllGoodsProvider();
        List<GoodsSpec> goodsSpecs = goodsSpecService.getAllGoodsSpec();

        view.addObject("goodsCategory", goodsCategory);
        view.addObject("goodsProviders", goodsProviders);
        view.addObject("goodsSpecs", goodsSpecs);
        return view;
    }

    @RequestMapping(value = "/goodsSpec", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    @ResponseBody
    public Response<GoodsSpec> addGoodsSpec(GoodsSpec goodsSpec) throws Exception {

        Response<GoodsSpec> response = new Response<GoodsSpec>();

        int result = goodsSpecService.addGoodsSpec(goodsSpec);
        if (result > 0) {
            response.setSuccess(1);
            response.setMessage("商品规格添加成功!");
            response.setData(null);
        } else {
            response.setSuccess(0);
            response.setMessage("商品规格添加失败!");
            response.setData(null);
        }

        return response;
    }

    @RequestMapping(value = "/goodsSpec", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
    @ResponseBody
    public List<GoodsSpec> getAllGoodsSpec() throws Exception {
        return goodsSpecService.getAllGoodsSpec();
    }

    @RequestMapping(value = "/goodsProvider", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    @ResponseBody
    public Response<GoodsProvider> addGoodsProvider(GoodsProvider goodsProvider) throws Exception {
        Response<GoodsProvider> response = new Response<GoodsProvider>();

        int result = goodsProviderService.addGoodsProvider(goodsProvider);
        if (result > 0) {
            response.setSuccess(1);
            response.setMessage("商品供应商添加成功!");
            response.setData(null);
        } else {
            response.setSuccess(0);
            response.setMessage("商品供应商添加失败!");
            response.setData(null);
        }

        return response;
    }

    @RequestMapping(value = "/goodsProvider", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
    @ResponseBody
    public List<GoodsProvider> getAllGoodsProvider() throws Exception {
        return goodsProviderService.getAllGoodsProvider();
    }

}
