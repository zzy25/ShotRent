package edu.xiyou.shortrent.service.impl;

import edu.xiyou.shortrent.dao.HouseMapper;
import edu.xiyou.shortrent.exception.ArguException;
import edu.xiyou.shortrent.model.House;
import edu.xiyou.shortrent.service.HouseService;
import edu.xiyou.shortrent.utils.ArguUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

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

    @Override
    public List<House> selectHouseByOweId(Integer owerid) throws Exception {
        List<House> houseList = null;
        try {
            House house = new House();
            house.setOwerid(owerid);
            houseList = houseMapper.selectBySelective(house);
        }catch (Exception e){
            logger.error("selectHouseByOweId owerid={}, exception={}", owerid, e);
            throw new Exception("通过业主id查询房子列表失败");
        }
        return houseList;
    }

    @Override
    public void updateHouse(House house) throws Exception {
        if (house == null || house.getId() == null){
            throw new ArguException("请输入合适的信息");
        }

        if (ArguUtils.fieldAllNull(house, House.class, "mobile", "tel", "price",
                "content", "furniture", "online", "checked", "rented")){
            logger.debug("updateHouse record={}, message={}", house, "没有修给任何信息");
            return;
        }

        try {
            houseMapper.updateByPrimaryKeySelective(house);
        }catch (Exception e){
            logger.error("updateHouse record={}, exception={}", house, e);
            throw new Exception("更新信息失败");
        }
    }

    @Override
    public House selectHouseByHouseId(Integer houseId) throws Exception {
        ArguUtils.notNull(houseId, "房间id");
        House house;
        try {
            house = houseMapper.selectByPrimaryKey(houseId);
        }catch (Exception e){
            logger.error("selectHouseByHouseId houseId={}, exception={}", houseId, e);
            throw new Exception("查询信息失败");
        }
        return house;
    }

    public HouseMapper getHouseMapper() {
        return houseMapper;
    }

    public void setHouseMapper(HouseMapper houseMapper) {
        this.houseMapper = houseMapper;
    }
}
