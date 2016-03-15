package edu.xiyou.shortrent.utils;

import edu.xiyou.shortrent.exception.ArguException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

/**
 * Created by andrew on 16-3-9.
 */
public class ArguUtils {
    private static final Logger LOGGER = LoggerFactory.getLogger(ArguUtils.class);
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


    /**
     * 判断一个对象的属性是否全部为空
     * @param object 检查对象
     * @param clazz  对象的类型
     * @param fieldNames 被检查的属性名，不指定属性名，则检查所有属性
     * @return true对象属性全空，false，不全空
     */
    @SuppressWarnings("unchecked")
    public static boolean fieldAllNull(Object object, Class clazz, String... fieldNames) {
        if (object == null || clazz == null) {
            return true;
        }

        if (fieldNames.length > 0) {
            for (String fieldName : fieldNames) {
                try {
                    if (!fieldValueNull(fieldName, object, clazz)){
                        return false;
                    }
                } catch (Exception e) {
                    LOGGER.debug("fieldAllNull exception={}", e);
                }
            }
        }else {
            try {
                Field[] fields = clazz.getDeclaredFields();
                for (Field field : fields){
                    String fieldName = field.getName();
                    if (!fieldValueNull(fieldName, object, clazz)){
                        return false;
                    }
                }
            }catch (Exception e){
                LOGGER.debug("fieldAllNull exception={}", e);
            }
        }
        return true;
    }

    /**
     * 判断指定属性是否不为空，未指定属性，则判断所有属性，都不为空，返回true，其他返回false
     * @param object 对象
     * @param clazz 对象类属性
     * @param fieldNames 属性名
     * @return boolean
     */
    @SuppressWarnings("unchecked")
    public static boolean fieldsNotNull(Object object,Class clazz, String... fieldNames){
        if (object == null || clazz == null){
            return false;
        }

        if (fieldNames.length > 0) {
            for (String fieldName : fieldNames) {
                try {
                    if (fieldValueNull(fieldName, object, clazz)){
                        return false;
                    }
                } catch (Exception e) {
                    LOGGER.debug("fieldsNotNull exception={}", e);
                }
            }
        }else {
            try {
                Field[] fields = clazz.getDeclaredFields();
                for (Field field : fields){
                    String fieldName = field.getName();
                    if (fieldValueNull(fieldName, object, clazz)){
                        return false;
                    }
                }
            }catch (Exception e){
                LOGGER.debug("fieldsNotNull exception={}", e);
            }
        }
        return true;
    }

    @SuppressWarnings("unchecked")
    private static boolean fieldValueNull(String fiedldName, Object object, Class clazz){
        String upperFieldName = StringUtils.upperHeadString(fiedldName);

        try {

            if (Boolean.class.equals(clazz.getDeclaredField(fiedldName).getType())){
                Method method = clazz.getMethod("is" + upperFieldName);
                if (method.invoke(object) != null){
                    return false;
                }
            }

            String methodName = "get" + upperFieldName;
            Method method = clazz.getMethod(methodName);
            if (method.invoke(object) != null) {
                return false;
            }
        }catch (Exception e){
            LOGGER.debug("fieldAllNull exception={}", e);
        }
        return true;
    }
}
