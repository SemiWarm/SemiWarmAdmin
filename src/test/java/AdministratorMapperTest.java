import cn.semiwarm.admin.entity.Administrator;
import cn.semiwarm.admin.mapper.AdministratorMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;

/**
 * 管理员测试类
 * Created by alibct on 2017/3/10.
 */
@RunWith(SpringJUnit4ClassRunner.class) // 注入Spring测试类
@ContextConfiguration("classpath:spring/spring-*.xml") // 注入Spring的所有配置文件，如果没有配置对会出现'failed load context application'的错误，如果出现请把之前的两个教程中的配置文件好好查看一下
public class AdministratorMapperTest {
    // 注入AdministratorMapper接口
    @Autowired
    private AdministratorMapper administratorMapper;

    // 标记为测试类
    @Test
    public void testAdd() { // 光标放在这里右键'Debug'，然后看控制台的打印日志，出现添加成功后就OK了
        Administrator administrator = new Administrator();
        Long administratorId = new Date().getTime();
        administrator.setAdministratorId(administratorId);
        administrator.setAdministratorName("SemiWarm");
        administrator.setPassword("941001");
        administrator.setPrivilegeLevel(10);
        administrator.setStatus(true);

        int result;
        result = administratorMapper.add(administrator);

        if (result > 0) {
            System.out.println("添加成功！");
        } else {
            System.out.println("添加失败！");
        }
    }
}
