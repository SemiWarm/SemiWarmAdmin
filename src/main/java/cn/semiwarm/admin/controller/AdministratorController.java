package cn.semiwarm.admin.controller;

import cn.semiwarm.admin.entity.Administrator;
import cn.semiwarm.admin.service.impl.AdministratorServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * 管理员控制器
 * Created by alibct on 2017/3/10.
 */
@Controller // 标记该类是控制器
public class AdministratorController {

    private final AdministratorServiceImpl administratorService;

    // service注入
    @Autowired
    public AdministratorController(AdministratorServiceImpl administratorService) {
        this.administratorService = administratorService;
    }

    // 请求登录映射路径
    @RequestMapping(value = "/signIn", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    public ModelAndView signIn(Administrator administrator) throws Exception{
        return administratorService.signIn(administrator);
    }
}
