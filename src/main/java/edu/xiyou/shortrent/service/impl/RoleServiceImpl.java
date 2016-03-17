package edu.xiyou.shortrent.service.impl;

import edu.xiyou.shortrent.dao.RoleMapper;
import edu.xiyou.shortrent.model.Role;
import edu.xiyou.shortrent.service.RoleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by zhuoxiong on 2016/3/16.
 */
@Service
public class RoleServiceImpl implements RoleService{

    @Resource
    private RoleMapper roleMapper;

    public List<Role> selectRolesByUserId(Integer userId){
        return  roleMapper.selectRolesByUserId(userId);
    }

    public RoleMapper getRoleMapper() {
        return roleMapper;
    }

    public void setRoleMapper(RoleMapper roleMapper) {
        this.roleMapper = roleMapper;
    }
}
