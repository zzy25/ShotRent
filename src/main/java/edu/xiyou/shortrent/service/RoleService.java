package edu.xiyou.shortrent.service;

import edu.xiyou.shortrent.model.Role;

import java.util.List;

/**
 * Created by zhuoxiong on 2016/3/16.
 */
public interface RoleService {
    List<Role> selectRolesByUserId(Integer userId);
}
