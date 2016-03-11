package edu.xiyou.shotrent.service;

import edu.xiyou.shotrent.model.House;

import java.util.List;

/**
 * Created by andrew on 16-3-10.
 */

public interface HouseService {

    Integer addHouse(House house) throws Exception;

    List<House> selectHouseByOweId(Integer owerid) throws Exception;

    void updateHouse(House house) throws Exception;

    House selectHouseByHouseId(Integer houseId) throws Exception;
}
