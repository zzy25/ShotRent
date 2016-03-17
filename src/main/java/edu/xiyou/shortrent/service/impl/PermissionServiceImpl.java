package edu.xiyou.shortrent.service.impl;

import edu.xiyou.shortrent.dao.PermissionMapper;
import edu.xiyou.shortrent.model.Permission;
import edu.xiyou.shortrent.service.PermissionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by zhuoxiong on 2016/3/16.
 */
@Service
public class PermissionServiceImpl implements PermissionService{

    @Resource
    private PermissionMapper permissionMapper;

    @Override
    public List<Permission> selectPermissionsByRoleId(Integer id) {
        return permissionMapper.selectPermissionsByRoleId(id);
    }

    public PermissionMapper getPermissionMapper() {
        return permissionMapper;
    }

    public void setPermissionMapper(PermissionMapper permissionMapper) {
        this.permissionMapper = permissionMapper;
    }
}
