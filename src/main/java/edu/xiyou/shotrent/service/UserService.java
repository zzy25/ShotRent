package edu.xiyou.shotrent.service;

import edu.xiyou.shotrent.model.User;

/**
 * Created by andrew on 16-3-9.
 */
public interface UserService {

    User loginCheck(String username, String password) throws Exception;

    boolean addUser(User user) throws Exception;

    User selectByPrimaryKey(Integer userId) throws Exception;

    Integer updateBySelective(User user) throws Exception;
}