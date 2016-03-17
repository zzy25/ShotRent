package edu.xiyou.shortrent.security;

import edu.xiyou.shortrent.model.Permission;
import edu.xiyou.shortrent.model.Role;
import edu.xiyou.shortrent.model.User;
import edu.xiyou.shortrent.service.PermissionService;
import edu.xiyou.shortrent.service.RoleService;
import edu.xiyou.shortrent.service.UserService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by andrew on 16-2-29.
 */
@Component(value = "securityRealm")
public class SecurityRealm extends AuthorizingRealm{

    @Resource
    private UserService userService;

    @Resource
    private RoleService roleService;

    @Resource
    private PermissionService permissionService;

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
        String username = String.valueOf(principals.getPrimaryPrincipal());

        try {
            final User user = userService.selectByUserName(username);
            final List<Role> roleList = roleService.selectRolesByUserId(user.getId());

            for (Role role : roleList){
                authorizationInfo.addRole(role.getSign());

                final List<Permission> permissionList = permissionService.selectPermissionsByRoleId(role.getId());
                for (Permission permission : permissionList){
                    authorizationInfo.addStringPermission(permission.getSign());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return authorizationInfo;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        String username = String.valueOf(token.getPrincipal());
        String password = new String((char[]) token.getCredentials());

        User authentication = null;
        try {
            authentication = userService.loginCheck(username, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (authentication == null) {
            throw new AuthenticationException("用户名或密码错误.");
        }
        return new SimpleAuthenticationInfo(username, password, getName());
    }

    public UserService getUserService() {
        return userService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    public RoleService getRoleService() {
        return roleService;
    }

    public void setRoleService(RoleService roleService) {
        this.roleService = roleService;
    }

    public PermissionService getPermissionService() {
        return permissionService;
    }

    public void setPermissionService(PermissionService permissionService) {
        this.permissionService = permissionService;
    }
}
