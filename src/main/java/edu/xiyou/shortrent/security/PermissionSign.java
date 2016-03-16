package edu.xiyou.shortrent.security;

/**
 * Created by andrew on 16-3-16.
 */
public final class PermissionSign {

    /**
     * 新增用戶權限
     */
    public final static String USER_CREATE = "user:create";

    /**
     * 更新用戶權限
     */
    public final static String USER_UPDATE = "user:update";

    /**
     * 刪除用戶權限
     */
    public final static String USER_DELETE = "user:delete";

    /**
     * 读取用户权限
     */
    public final static String USER_READ = "user:read";


    /**
     * 新增房子操作
     */
    public final static String HOUSE_CREATE = "house:create";

    /**
     * 房子更新操作
     */
    public final static String HOUSE_UPDATE = "house:update";

    /**
     * 房子审核操作
     */
    public final static String HOUSE_CHECK = "house:check";
}
