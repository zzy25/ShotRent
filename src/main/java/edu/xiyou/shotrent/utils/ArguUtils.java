package edu.xiyou.shotrent.utils;

import edu.xiyou.shotrent.exception.ArguException;

import java.lang.reflect.Method;

/**
 * Created by andrew on 16-3-9.
 */
public class ArguUtils {

    /**
     * 判断一个对象是否为null
     *
     * @param object
     * @param msg
     * @throws ArguException
     */
    public static void notNull(Object object, String msg) throws ArguException {
        if (object == null) {
            throw new ArguException(msg + "不能为空");
        }
    }

    /**
     * 判断一个字符串长度必须大于指定长度
     *
     * @param string
     * @param length
     * @param msg
     * @throws ArguException
     */
    public static void strLonger(String string, int length, String msg) throws ArguException {
        notNull(string, msg);
        if (string.length() < length) {
            throw new ArguException(msg + "长度必须大于" + length);
        }
    }

    /**
     * 判断一个字符串长度是否小于指定长度
     *
     * @param string
     * @param length
     * @param msg
     * @throws ArguException
     */
    public static void strShorter(String string, int length, String msg) throws ArguException {
        notNull(string, msg);
        if (string.length() > length) {
            throw new ArguException(msg + "长度必须小于" + length);
        }
    }

    /**
     * 判断一个字符串长度是否在指定区间内
     *
     * @param string
     * @param shorter
     * @param longer
     * @param msg
     * @throws ArguException
     */
    public static void strLengthInterval(String string, int shorter, int longer, String msg) throws ArguException {
        notNull(string, msg);
        if (string.length() < shorter || string.length() > longer) {
            throw new ArguException(msg + "长度必须大于" + shorter + "小于" + longer);
        }
    }


    @SuppressWarnings("unchecked")
    public static boolean fiedldAllNull(Object object, Class clazz, String... fieldNames) {
        if (object == null) {
            return true;
        }

        for (String fieldName : fieldNames) {
            try {
                String upperFieldName;
                if (fieldName.length() > 1) {
                    upperFieldName = fieldName.substring(0, 1).toUpperCase() + fieldName.substring(1, fieldName.length());
                } else {
                    upperFieldName = fieldName.toUpperCase();
                }
                String methodName = "get" + upperFieldName;

                Method method = clazz.getMethod(methodName);
                if (method.invoke(object) != null) {
                    return false;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return true;
    }
}
