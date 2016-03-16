package edu.xiyou.shortrent.security;

/**
 * Created by andrew on 16-3-16.
 */
public class RoleSign {

    /**
     * 访客，未登陆的用户
     */
    public final static String guest = "GUEST";

    /**
     * 顾客，登陆的普通用户
     */
    public final static String customer = "CUSTOMER";

    /**
     * 业主，房子拥有者
     */
    public final static String owner = "OWNER";

    /**
     * 管理员，系统权限最高者
     */
    public final static String admin = "ADMIN";
}
