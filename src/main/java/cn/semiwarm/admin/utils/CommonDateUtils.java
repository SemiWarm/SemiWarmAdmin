package cn.semiwarm.admin.utils;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 时间工具类
 * Created by alibct on 2017/3/11.
 */
public class CommonDateUtils {

    /**
     * 获取当前格式化日期
     *
     * @return 当前格式化日期
     */
    public static String getFromatCurrentDate() {
        Date currentDate = new Date();
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return format.format(currentDate);
    }

    /**
     * 将指定日期格式化
     *
     * @param date 指定格式化的日期
     * @return 格式化后的日期
     */
    public static String getFromatDate(Date date) {
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return format.format(date);
    }
}
