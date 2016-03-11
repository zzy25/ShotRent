package edu.xiyou.shotrent.service.impl;

import edu.xiyou.shotrent.dao.HouseMapper;
import edu.xiyou.shotrent.model.House;
import edu.xiyou.shotrent.service.HouseService;
import edu.xiyou.shotrent.utils.ArguUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by andrew on 16-3-10.
 */
@Service
public class HouseServiceImpl implements HouseService {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Resource
    private HouseMapper houseMapper;

    @Override
    public Integer addHouse(House house) throws Exception {
        Integer num;
        ArguUtils.notNull(house.getOwerid(), "业主信息");
        ArguUtils.notNull(house.getMobile(), "业主手机号码");
        ArguUtils.notNull(house.getAddress(), "房子地址");
        ArguUtils.notNull(house.getArea(), "房子面积");
        ArguUtils.notNull(house.getPrice(), "房子价格");
        ArguUtils.strLonger(house.getContent(), 6, "房子简介");

        try {
            num = houseMapper.insertSelective(house);
        }catch (Exception e){
            logger.error("addHouse record={}, exception={}", house, e);
            throw new Exception("添加信息失败");
        }

        return num;
    }

    public HouseMapper getHouseMapper() {
        return houseMapper;
    }

    public void setHouseMapper(HouseMapper houseMapper) {
        this.houseMapper = houseMapper;
    }
}
