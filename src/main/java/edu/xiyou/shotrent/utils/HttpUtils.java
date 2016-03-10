package edu.xiyou.shotrent.utils;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by andrew on 16-3-9.
 */
public class HttpUtils {

    /**
     * 得到请求的根目录
     *
     * @param request
     * @return
     */
    public static String getBasePath(HttpServletRequest request) {
        String path = request.getContextPath();
        return request.getScheme() + "://" + request.getServerName()
                + ":" + request.getServerPort() + path;
    }
}
