package cn.semiwarm.admin.service;

import cn.semiwarm.admin.entity.Administrator;
import org.springframework.web.servlet.ModelAndView;

/**
 * 管理员业务接口
 * Created by alibct on 2017/3/10.
 */
public interface AdministratorService extends BaseService<Administrator>{
    ModelAndView signIn(Administrator administrator) throws Exception;
}
