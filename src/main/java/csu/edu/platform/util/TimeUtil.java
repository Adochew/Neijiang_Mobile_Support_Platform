package csu.edu.platform.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeUtil {
    public static String getNow() {
        // 获取当前时间
        Date currentTime = new Date();

        // 定义日期时间格式
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        // 格式化当前时间并输出
        return formatter.format(currentTime);
    }
}
