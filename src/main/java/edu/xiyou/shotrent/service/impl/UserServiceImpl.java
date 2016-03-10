package edu.xiyou.shotrent.service.impl;

import edu.xiyou.shotrent.dao.UserMapper;
import edu.xiyou.shotrent.exception.ArguException;
import edu.xiyou.shotrent.exception.AuthException;
import edu.xiyou.shotrent.model.User;
import edu.xiyou.shotrent.service.UserService;
import edu.xiyou.shotrent.utils.ArguUtils;
import edu.xiyou.shotrent.utils.AuthUtils;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

/**
 * Created by andrew on 16-3-9.
 */
@Repository
public class UserServiceImpl implements UserService {

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Resource
    private UserMapper userMapper;

    @Override
    public User loginCheck(String username, String password) throws AuthException {
        User user;
        try {
            user = userMapper.selectByUserName(username);
            if (user == null) {
                throw new AuthException("请输入正确的用户名密码");
            }
            String md5Password = AuthUtils.MD5(password);
            if (user.getPassword().equals(md5Password)) {
                return user;
            } else {
                throw new AuthException("请输入正确的用户名密码");
            }
        } catch (Exception e) {
            logger.error("loginCheck record={},exception={}", username, e);
            throw new AuthException("请输入正确的用户名密码");
        }
    }

    @Override
    public boolean addUser(User user) throws AuthException {

        String username = user.getUsername();
        String password = user.getPassword();
        String email = user.getEmail();
        String mobile = user.getMobile();
        if (StringUtils.isBlank(username) || StringUtils.isBlank(password)
                || StringUtils.isBlank(email) || StringUtils.isBlank(mobile)) {
            throw new AuthException("用户名，密码，邮箱，手机号不能为空");
        } else if (username.length() < 6 || username.length() > 30) {
            throw new AuthException("账号和密码长度必须大于6并且小于30");
        } else if (password.length() < 6 || password.length() > 30) {
            throw new AuthException("账号和密码长度必须大于6并且小于30");
        }

        try {
            if (userMapper.selectByUserName(username) != null){
                throw new AuthException("该用户名已经被使用");
            }
            user.setPassword(AuthUtils.MD5(user.getPassword()));
            if (userMapper.insertSelective(user) > 0){
                return true;
            }
        }catch (Exception e){
            logger.error("addUser reocord={}, exception={}",user, e);
            throw new AuthException("请输入正确的信息");
        }
        return false;
    }

    @Override
    public User selectByPrimaryKey(Integer userId) throws Exception {
        User user = null;
        try {
            user = userMapper.selectByPrimaryKey(userId);
        }catch (Exception e){
            logger.error("selectByPrimaryKey rerocd={}, exception={}", userId, e);
        }
        return user;
    }

    @Override
    public Integer updateBySelective(User user) throws Exception {

        if (user.getId() == null){
            throw new ArguException("id不能为空");
        }

        if ((user.getUsername() == null) && (user.getPassword() == null)
                && (user.getEmail() == null) && (user.getMobile() == null)
                && (user.getPermission() == null)){
            return 0;
        }
        if (user.getUsername() != null) {
            ArguUtils.strLengthInterval(user.getUsername(), 2, 30, "用户名");
        }

        if (user.getPassword() != null){
            ArguUtils.strLengthInterval(user.getPassword(), 6, 30, "用户名");
        }

        return userMapper.updateByPrimaryKeySelective(user);

    }

}
