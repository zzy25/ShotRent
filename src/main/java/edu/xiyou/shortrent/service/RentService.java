package edu.xiyou.shortrent.service;

import edu.xiyou.shortrent.model.House;
import edu.xiyou.shortrent.model.vo.HouseVo;

import java.util.List;

/**
 * Created by andrew on 16-3-9.
 */
public interface RentService {

    List<House> selectBySelective(House house) throws Exception;

    House selectByPrimaryKey(Integer id) throws Exception;

    List<House> selectByHouseVo(HouseVo houseVo) throws Exception;
}
