package edu.xiyou.shotrent.service;

import edu.xiyou.shotrent.model.House;

import java.util.List;

/**
 * Created by andrew on 16-3-9.
 */
public interface RentService {

    List<House> selectBySelective(House house);

    House selectByPrimaryKey(Integer id);
}
