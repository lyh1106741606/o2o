package com.ustb.o2o.mapper;

import java.util.List;

import com.ustb.o2o.entity.Area;

public interface AreaMapper {
    int deleteByPrimaryKey(Integer areaId);

    int insert(Area record);

    int insertSelective(Area record);

    Area selectByPrimaryKey(Integer areaId);
    
    List<Area> selectAll();

    int updateByPrimaryKeySelective(Area record);

    int updateByPrimaryKey(Area record);
}