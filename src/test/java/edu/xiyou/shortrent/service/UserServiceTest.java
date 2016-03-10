package edu.xiyou.shortrent.service;

import edu.xiyou.shortrent.test.BaseTest;
import edu.xiyou.shotrent.model.User;
import edu.xiyou.shotrent.service.UserService;
import org.junit.Test;

import javax.annotation.Resource;
import java.util.Date;

/**
 * Created by andrew on 16-3-10.
 */
public class UserServiceTest extends BaseTest{
    @Resource
    private UserService userService;

//    @Test
    public void testlogin(){
        try {
            System.out.println(userService.loginCheck("岳超刚", "123456"));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

//    @Test
    public void testAdd(){
        User user = new User();
        user.setUsername("刚子这个畜牲");
        user.setPassword("123456");
        user.setEmail("634453@qq.com");
        user.setMobile("110119");
        user.setCreatetime(new Date());
        user.setUpdatetime(new Date());
        try {
            userService.addUser(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void testUpdate(){
        User user = new User();
        user.setId(10000);
        user.setUsername("刚子这逗比");
        user.setUpdatetime(new Date());
        try {
            userService.updateBySelective(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
