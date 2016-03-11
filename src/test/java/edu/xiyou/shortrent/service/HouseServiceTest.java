package edu.xiyou.shortrent.service;

import edu.xiyou.shortrent.test.BaseTest;
import edu.xiyou.shotrent.model.House;
import edu.xiyou.shotrent.service.HouseService;
import org.junit.Test;

import javax.annotation.Resource;

/**
 * Created by andrew on 16-3-11.
 */
public class HouseServiceTest extends BaseTest{
    @Resource
    private HouseService houseService;

//    @Test
    public void testAdd(){
        House house = new House();
        house.setOwerid(10004);
        house.setMobile("123213698");
        house.setHousetype((short) 2);
        house.setAddress("你又找不到");
        house.setArea(150);
        house.setPrice(2100);
        house.setContent("不知道打点什么，这是在干嘛，刚子是个傻逼，蠢逼");
        try {
            System.out.println(houseService.addHouse(house));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void testUpdate(){
        House house = new House();
        house.setId(10005);
        house.setContent("刚子是头猪");
        try {
            houseService.updateHouse(house);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public HouseService getHouseService() {
        return houseService;
    }

    public void setHouseService(HouseService houseService) {
        this.houseService = houseService;
    }
}
