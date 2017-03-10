package cn.semiwarm.admin.mapper;

import java.io.Serializable;
import java.util.List;

/**
 * 基本操作接口
 * Created by alibct on 2017/3/10.
 */
public interface BaseMapper<T> {
    /**
     * 增加方法
     *
     * @param t 要增加的对象
     * @return 受影响的行数
     */
    int add(T t);

    /**
     * 删除方法
     *
     * @param t 要删除的对象
     * @return 受影响的行数
     */
    int delete(T t);

    /**
     * 更新方法
     *
     * @param t 要更新的对象
     * @return 受影响的行数
     */
    int update(T t);

    /**
     * 根据id查询某个对象
     *
     * @param id 要查询对象的id
     * @return 要查询的对象
     */
    T findById(Serializable id);

    /**
     * 查询所有对象
     *
     * @return 所有对象
     */
    List<T> findAll();
}
