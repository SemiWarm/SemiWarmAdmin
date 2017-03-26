package cn.semiwarm.admin.service;

import cn.semiwarm.admin.entity.Administrator;
import cn.semiwarm.admin.entity.SignInResponse;

import javax.servlet.http.HttpSession;

/**
 * 管理员业务接口
 * Created by alibct on 2017/3/10.
 */
public interface AdministratorService extends BaseService<Administrator> {
    SignInResponse signIn(HttpSession session, Administrator administrator) throws Exception;
}
