package edu.xiyou.shortrent.service.impl;

import edu.xiyou.shortrent.dao.UserMapper;
import edu.xiyou.shortrent.exception.ArguException;
import edu.xiyou.shortrent.exception.AuthException;
import edu.xiyou.shortrent.model.User;
import edu.xiyou.shortrent.service.UserService;
import edu.xiyou.shortrent.utils.ArguUtils;
import edu.xiyou.shortrent.utils.AuthUtils;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

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
        User user = null;
        try {
            user = userMapper.selectByUserName(username);
            if (user == null) {
                logger.debug("loginCheck username={}, password={}查询不到对应的信息",username, password );
                throw new AuthException("请输入正确的用户名密码");
            }
            String md5Password = AuthUtils.MD5(password);
            if (user.getPassword().equals(md5Password)) {
                return user;
            } else {
                throw new AuthException("请输入正确的用户名密码");
            }
        } catch (Exception e) {
            logger.error("loginCheck record={}, exception={}",username, e);
            throw new AuthException("请输入正确的用户名密码");
        }
    }

    @Override
    public boolean addUser(User user) throws AuthException {

        String username = user.getUsername();
        String password = user.getPassword();
        String email = user.getEmail();
        String mobile = user.getMobile();

        if (userMapper.selectByUserName(username) != null){
            throw new AuthException("该用户名已经被使用");
        }
        try {
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
            ArguUtils.strLengthInterval(user.getPassword(), 2, 30, "密码");
        }
        user.setPassword(AuthUtils.MD5(user.getPassword()));
        return userMapper.updateByPrimaryKeySelective(user);

    }

    @Override
    public User selectByUserName(String username) throws Exception {
        ArguUtils.strLengthInterval(username, 2, 30, "用户名");
        User user = null;
        try {
            user = userMapper.selectByUserName(username);
        }catch (Exception e){
            logger.error("selectByUserName record={}, exception={}", username, e);
        }
        return user;
    }

    @Override
    public User authentication(User user) {
        user.setPassword(AuthUtils.MD5(user.getPassword()));
        return userMapper.authentication(user);
    }

    @Override
    public List<User> selectBySelective(User user) throws Exception {
        return userMapper.selectBySelective(user);
    }

}
