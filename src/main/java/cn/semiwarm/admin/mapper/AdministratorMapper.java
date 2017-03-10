package cn.semiwarm.admin.mapper;

import cn.semiwarm.admin.entity.Administrator;

import java.io.Serializable;
import java.util.List;

/**
 * 管理员基本操作
 * Created by alibct on 2017/3/10.
 */
public interface AdministratorMapper extends BaseMapper<Administrator>{

    int add(Administrator administrator);

    int delete(Administrator administrator);

    int update(Administrator administrator);

    Administrator findById(Serializable id);

    List<Administrator> findAll();

    Administrator verifyAdministratorByName(Administrator administrator);
}
