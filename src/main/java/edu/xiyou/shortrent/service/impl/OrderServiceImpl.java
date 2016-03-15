package edu.xiyou.shortrent.service.impl;

import com.google.common.collect.Lists;
import edu.xiyou.shortrent.constant.HouseConstant;
import edu.xiyou.shortrent.dao.HouseMapper;
import edu.xiyou.shortrent.dao.OrderMapper;
import edu.xiyou.shortrent.exception.ArguException;
import edu.xiyou.shortrent.exception.AuthException;
import edu.xiyou.shortrent.model.House;
import edu.xiyou.shortrent.model.Order;
import edu.xiyou.shortrent.service.OrderService;
import edu.xiyou.shortrent.utils.ArguUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by andrew on 16-3-14.
 */
@Service
public class OrderServiceImpl implements OrderService {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Resource
    private OrderMapper orderMapper;

    @Resource
    private HouseMapper houseMapper;

    @Override
    public List<Order> selectBySelective(Order order) throws Exception {
        ArguUtils.notNull(order, "订单信息");
        List<Order> orderList = Lists.newArrayList();
        if (ArguUtils.fieldAllNull(order, order.getClass())) {
            return orderList;
        }
        try {
            orderList = orderMapper.selectBySelective(order);
        } catch (Exception e) {
            logger.error("selectBySelective record={}, exception={}", order, e);
        }

        return orderList;
    }

    @Override
    public Order selectByPrimaryKey(Integer orderId) throws Exception {
        ArguUtils.notNull(orderId, "订单主键");
        Order order = null;
        try {
            order = orderMapper.selectByPrimaryKey(orderId);
        } catch (Exception e) {
            logger.error("selectByPrimaryKey record={}, exception={}", orderId, e);
        }
        return order;
    }

    @Override
    @Transactional(noRollbackFor = {ArguException.class, AuthException.class})
    public Integer updateBySelective(Order order) throws Exception {
        ArguUtils.notNull(order, "订单信息");
        ArguUtils.notNull(order.getId(), "订单主键");
        ArguUtils.notNull(order.getOwerid(), "房主主键");
        ArguUtils.notNull(order.getCustomer(), "顾客主键");
        ArguUtils.notNull(order.getHourseid(), "房间主键");
        if (ArguUtils.fieldAllNull(order, order.getClass(), "amount", "starttime", "endtime", "terminate")) {
            return 0;
        }
        try {
            if (order.getTerminate() != null){
                House house = new House();
                house.setId(order.getHourseid());
                house.setRented((short) ~(order.getTerminate() & 1));
                houseMapper.updateByPrimaryKey(house);
            }
            return orderMapper.updateByPrimaryKeySelective(order);
        } catch (Exception e) {
            logger.error("updateBySelective record={}, exception={}", order, e);
        }
        return 0;
    }

    @Override
    public Integer insertBySelective(Order order) throws Exception {
        ArguUtils.notNull(order.getOwerid(), "房主信息");
        ArguUtils.notNull(order.getCustomer(), "租客信息");
        ArguUtils.notNull(order.getHourseid(), "房间主键");
        ArguUtils.notNull(order.getAmount(), "成交价格");
        ArguUtils.notNull(order.getBegintime(), "租住开始时间");
        ArguUtils.notNull(order.getEndtime(), "租住结束时间");

        House house = null;
        try {
            house = houseMapper.selectByPrimaryKey(order.getHourseid());
        } catch (Exception e) {
            logger.error("insertBySelective record={},exception={}", order.getHourseid(), e);
        }
        if (house == null) {
            throw new ArguException("查不到对应房字信息");
        }
        if (house.getRented() != HouseConstant.HOUSE_UNRENTED) {
            throw new ArguException("房子已经被租住了");
        }
        try {
            return orderMapper.insertSelective(order);
        }catch (Exception e){
            logger.error("insertBySelective record={}, exception={}", order, e);
        }
        return 0;
    }

    public OrderMapper getOrderMapper() {
        return orderMapper;
    }

    public void setOrderMapper(OrderMapper orderMapper) {
        this.orderMapper = orderMapper;
    }

    public HouseMapper getHouseMapper() {
        return houseMapper;
    }

    public void setHouseMapper(HouseMapper houseMapper) {
        this.houseMapper = houseMapper;
    }
}
