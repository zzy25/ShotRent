package edu.xiyou.shortrent.service;

import edu.xiyou.shortrent.model.Permission;

import java.util.List;

/**
 * Created by zhuoxiong on 2016/3/16.
 */
public interface PermissionService {

    List<Permission> selectPermissionsByRoleId(Integer id);
}
