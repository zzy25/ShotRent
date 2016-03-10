package edu.xiyou.shotrent.controller;

import edu.xiyou.shotrent.service.RentService;
import edu.xiyou.shotrent.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.Resource;

/**
 * Created by andrew on 16-3-9.
 */
public class BaseController {

    final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Resource
    RentService rentService;

    @Resource
    UserService userService;

    public RentService getRentService() {
        return rentService;
    }

    public void setRentService(RentService rentService) {
        this.rentService = rentService;
    }

    public UserService getUserService() {
        return userService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }
}
