package edu.xiyou.shortrent.utils;

/**
 * Created by andrew on 16-3-11.
 */
public class StringUtils {

    /**
     * 将字符串首字母大写
     * @param string
     * @return
     */
    public static String upperHeadString(String string){
        String upperFieldName;
        if (string.length() > 1) {
            upperFieldName = string.substring(0, 1).toUpperCase() + string.substring(1, string.length());
        } else {
            upperFieldName = string.toUpperCase();
        }
        return upperFieldName;
    }
}
