package cn.semiwarm.admin.service.impl;

import cn.semiwarm.admin.entity.Administrator;
import cn.semiwarm.admin.mapper.AdministratorMapper;
import cn.semiwarm.admin.service.AdministratorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

/**
 * 管理员业务实现类
 * Created by alibct on 2017/3/10.
 */
@Service("administratorService") // Service注解
public class AdministratorServiceImpl implements AdministratorService {

    private final AdministratorMapper administratorMapper;

    // 注入Mapper接口
    @Autowired
    public AdministratorServiceImpl(AdministratorMapper administratorMapper) {
        this.administratorMapper = administratorMapper;
    }

    public ModelAndView signIn(Administrator administrator) throws Exception {

        ModelAndView view = new ModelAndView("mdEditor"); // 实例化jsp界面就是前面写的那个main.jsp

        Administrator administratorInfo = administratorMapper.verifyAdministratorByName(administrator);

        if (null != administratorInfo) {
            view.addObject("message",administratorInfo.toString());
        } else {
            view.addObject("message","用户名或密码有误！");
        }

        return view;
    }
}
