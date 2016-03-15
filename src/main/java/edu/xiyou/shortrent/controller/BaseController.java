package edu.xiyou.shortrent.controller;


import edu.xiyou.shortrent.service.HouseService;
import edu.xiyou.shortrent.service.OrderService;
import edu.xiyou.shortrent.service.RentService;
import edu.xiyou.shortrent.service.UserService;
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

    @Resource
    HouseService houseService;

    @Resource
    OrderService orderService;

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

    public HouseService getHouseService() {
        return houseService;
    }

    public void setHouseService(HouseService houseService) {
        this.houseService = houseService;
    }

    public OrderService getOrderService() {
        return orderService;
    }

    public void setOrderService(OrderService orderService) {
        this.orderService = orderService;
    }
}
