package cn.semiwarm.admin.utils;

import java.text.DecimalFormat;

/**
 * 文件操作工具类
 * Created by alibct on 2017/4/8.
 */
public class CommonFileUtils {

    /**
     * 将文件大小转换成String类型
     *
     * @param size 文件大小
     * @return String类型的文件大小
     */
    public static String formatFileSizeToString(long size) {

        DecimalFormat df = new DecimalFormat("#.00");
        String fileSizeString;
        if (size < 1024) {
            fileSizeString = df.format((double) size) + "B";
        } else if (size < 1048576) {
            fileSizeString = df.format((double) size / 1024) + "K";
        } else if (size < 1073741824) {
            fileSizeString = df.format((double) size / 1048576) + "M";
        } else {
            fileSizeString = df.format((double) size / 1073741824) + "G";
        }
        return fileSizeString;
    }

    /**
     * 获取文件扩展名
     *
     * @param filename 文件名称
     * @return 文件扩展名
     */
    public static String getExtensionName(String filename) {

        if ((filename != null) && (filename.length() > 0)) {
            int dot = filename.lastIndexOf('.');
            if ((dot > -1) && (dot < (filename.length() - 1))) {
                return filename.substring(dot + 1);
            }
        }
        return filename;
    }
}
