package cn.semiwarm.admin.utils;

/**
 * String常用类
 * Created by alibct on 2017/4/8.
 */
public class CommonStringUtils {

    /**
     * 判断字符串是否为空
     *
     * @param str 要判断的字符串
     * @return 是否为空
     */
    public static Boolean isEmpty(String str) {
        return str == null || str.length() <= 0;
    }
}
