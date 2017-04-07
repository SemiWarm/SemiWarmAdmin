package cn.semiwarm.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * 主页控制器
 * Created by alibct on 2017/3/22.
 */
@Controller
public class MainController {

    @RequestMapping(value = "/main", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
    public ModelAndView main() {
        return new ModelAndView("main");
    }

    @RequestMapping(value = "/goods", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
    public ModelAndView goods() {
        return new ModelAndView("goods");
    }

    @RequestMapping(value = "/category", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
    public ModelAndView category() {
        return new ModelAndView("category");
    }

    @RequestMapping(value = "/editor", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
    public ModelAndView editor() {
        return new ModelAndView("mdEditor");
    }

}
