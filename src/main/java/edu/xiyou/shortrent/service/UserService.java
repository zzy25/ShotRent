package edu.xiyou.shortrent.service;

import edu.xiyou.shortrent.model.User;

import java.util.List;

/**
 * Created by andrew on 16-3-9.
 */
public interface UserService {

    User loginCheck(String username, String password) throws Exception;

    boolean addUser(User user) throws Exception;

    User selectByPrimaryKey(Integer userId) throws Exception;

    Integer updateBySelective(User user) throws Exception;

    User selectByUserName(String username) throws Exception;

    User authentication(User user);

    List<User> selectBySelective(User user) throws Exception;
}
