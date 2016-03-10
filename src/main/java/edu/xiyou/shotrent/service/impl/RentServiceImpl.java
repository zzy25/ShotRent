package edu.xiyou.shotrent.service.impl;

import com.google.common.collect.Lists;
import edu.xiyou.shotrent.dao.HouseMapper;
import edu.xiyou.shotrent.dao.UserMapper;
import edu.xiyou.shotrent.model.House;
import edu.xiyou.shotrent.service.RentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by andrew on 16-3-9.
 */
@Service
public class RentServiceImpl implements RentService {

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Resource
    private HouseMapper houseMapper;

    @Resource
    private UserMapper userMapper;

    @Override
    public List<House> selectBySelective(House house){
        List<House> houseList = Lists.newArrayList();
        if (house == null){
            return houseList;
        }

        try {
            houseList = houseMapper.selectBySelective(house);
        }catch (Exception e){
            logger.error("selectBySeletive record={}, exception={}" + house, e);
        }
        return houseList;
    }

    @Override
    public House selectByPrimaryKey(Integer id) {
        House house = null;

        try {
            house = houseMapper.selectByPrimaryKey(id);
        }catch (Exception e){
            logger.error("selectByPrimaryKey record={}, exception={}" + id, e);
        }

        return house;
    }

    public HouseMapper getHouseMapper() {
        return houseMapper;
    }

    public void setHouseMapper(HouseMapper houseMapper) {
        this.houseMapper = houseMapper;
    }

    public UserMapper getUserMapper() {
        return userMapper;
    }

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }
}
