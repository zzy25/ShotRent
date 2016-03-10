package edu.xiyou.shotrent.dao;

import edu.xiyou.shotrent.model.House;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface HouseMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(House record);

    int insertSelective(House record);

    House selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(House record);

    int updateByPrimaryKeyWithBLOBs(House record);

    int updateByPrimaryKey(House record);

    List<House> selectBySelective(House house);
}