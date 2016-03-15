package edu.xiyou.shortrent.dao;

import edu.xiyou.shortrent.model.House;
import edu.xiyou.shortrent.model.vo.HouseVo;
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

    List<House> selectByHouseVo(HouseVo houseVo);
}