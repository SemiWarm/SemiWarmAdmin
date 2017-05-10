package cn.semiwarm.admin.controller;

import cn.semiwarm.admin.entity.Category;
import cn.semiwarm.admin.service.impl.CategoryServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * 主页控制器
 * Created by alibct on 2017/3/22.
 */
@Controller
public class MainController {

    private final CategoryServiceImpl categoryService;

    @Autowired
    public MainController(CategoryServiceImpl categoryService) {
        this.categoryService = categoryService;
    }

    @RequestMapping(value = "/main", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
    public ModelAndView main() throws Exception {
        return new ModelAndView("main");
    }

    @RequestMapping(value = "/image", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
    public ModelAndView image() throws Exception {
        return new ModelAndView("image");
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
