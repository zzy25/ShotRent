package edu.xiyou.shotrent.utils;

import org.apache.commons.codec.digest.DigestUtils;

/**
 * Created by andrew on 16-3-10.
 */
public class AuthUtils {

    public static String MD5(String str) {
        return DigestUtils.md5Hex(str).toLowerCase();
    }
}
