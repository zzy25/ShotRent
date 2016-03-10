package edu.xiyou.shotrent.utils;

import edu.xiyou.shotrent.exception.ArguException;

/**
 * Created by andrew on 16-3-9.
 */
public class ArguUtils {

    public static void notNull(Object object, String msg) throws ArguException {
        if (object == null){
            throw new ArguException(msg + "不能为空");
        }
    }

    public static void strLonger(String string, int length, String msg) throws ArguException {
        notNull(string, msg);
        if (string.length() < length){
            throw new ArguException(msg + "长度必须大于" + length);
        }
    }

    public static void strShorter(String string, int length, String msg) throws ArguException{
        notNull(string, msg);
        if (string.length() > length){
            throw new ArguException(msg + "长度必须小于" + length);
        }
    }

    public static void strLengthInterval(String string, int shorter, int longer, String msg) throws ArguException {
        notNull(string, msg);
        if (string.length() < shorter || string.length() > longer){
            throw new ArguException(msg + "长度必须大于" + shorter + "小于" + longer);
        }
    }
}
