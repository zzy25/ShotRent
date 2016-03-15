package edu.xiyou.shortrent.service;

import edu.xiyou.shortrent.model.Order;

import java.util.List;

/**
 * Created by andrew on 16-3-14.
 */

public interface OrderService {

    List<Order> selectBySelective(Order order) throws Exception;

    Order selectByPrimaryKey(Integer orderId) throws Exception;

    Integer updateBySelective(Order order) throws Exception;

    Integer insertBySelective(Order order) throws Exception;
}
