package cn.semiwarm.admin.controller;

import cn.semiwarm.admin.entity.Administrator;
import cn.semiwarm.admin.entity.SignInResponse;
import cn.semiwarm.admin.service.impl.AdministratorServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

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

    @RequestMapping(value = "/signIn", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
    public String signIn() throws Exception {
        return "forward:index.jsp";
    }

    // 请求登录映射路径
    @RequestMapping(value = "/signIn", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    @ResponseBody
    public SignInResponse signIn(HttpSession session, Administrator administrator) throws Exception {
        return administratorService.signIn(session, administrator);
    }
}
