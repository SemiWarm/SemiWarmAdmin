package cn.semiwarm.admin.service.impl;

import cn.semiwarm.admin.entity.Administrator;
import cn.semiwarm.admin.entity.SignInResponse;
import cn.semiwarm.admin.mapper.AdministratorMapper;
import cn.semiwarm.admin.service.AdministratorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

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

    /**
     * 管理员登录接口
     *
     * @param session       会话
     * @param administrator 管理员信息
     * @return SignInResponse
     * @throws Exception 异常信息
     */
    public SignInResponse signIn(HttpSession session, Administrator administrator) throws Exception {

        SignInResponse response = new SignInResponse();

        Administrator administratorInfo = administratorMapper.verifyAdministratorByName(administrator);

        if (null != administratorInfo) {
            // 设置返回信息
            response.setSuccess(1);
            response.setMessage("登录成功!");
            // 存储Session
            session.setAttribute("administratorId", administratorInfo.getAdministratorId());
            session.setAttribute("administratorName", administratorInfo.getAdministratorName());
            session.setAttribute("privilegeLevel", administratorInfo.getPrivilegeLevel());
        } else {
            response.setSuccess(0);
            response.setMessage("管理员名称或密码有误!");
        }

        return response;
    }
}
