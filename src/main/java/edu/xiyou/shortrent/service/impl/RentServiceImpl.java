package edu.xiyou.shortrent.service.impl;

import com.google.common.collect.Lists;
import edu.xiyou.shortrent.dao.HouseMapper;
import edu.xiyou.shortrent.dao.UserMapper;
import edu.xiyou.shortrent.exception.ArguException;
import edu.xiyou.shortrent.model.House;
import edu.xiyou.shortrent.model.vo.HouseVo;
import edu.xiyou.shortrent.service.RentService;
import edu.xiyou.shortrent.utils.ArguUtils;
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
    public List<House> selectBySelective(House house) throws ArguException {
        List<House> houseList = Lists.newArrayList();
        ArguUtils.notNull(house, "房间信息");

        try {
            houseList = houseMapper.selectBySelective(house);
        } catch (Exception e) {
            logger.error("selectBySeletive record={}, exception={}" + house, e);
        }
        return houseList;
    }

    @Override
    public House selectByPrimaryKey(Integer id) throws ArguException {
        House house = null;
        if (id == null || id < 10000){
            throw new ArguException("房间信息有误");
        }

        try {
            house = houseMapper.selectByPrimaryKey(id);
        } catch (Exception e) {
            logger.error("selectByPrimaryKey record={}, exception={}" + id, e);
        }

        return house;
    }

    @Override
    public List<House> selectByHouseVo(HouseVo houseVo) throws Exception {
        List<House> houseList = null;
        try {

            houseList = houseMapper.selectByHouseVo(houseVo);
        }catch (Exception e){
            logger.error("selectByHouseVo record={}, exception={}", houseVo, e);
        }

        return houseList;
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
