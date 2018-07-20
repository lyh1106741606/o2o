package com.ustb.o2o.mapper;

import java.util.List;

import com.ustb.o2o.entity.HeadLine;

public interface HeadLineMapper {
    int deleteByPrimaryKey(Integer lineId);

    int insert(HeadLine record);

    int insertSelective(HeadLine record);

    HeadLine selectByPrimaryKey(Integer lineId);
    
    List<HeadLine> selectAll();

    int updateByPrimaryKeySelective(HeadLine record);

    int updateByPrimaryKey(HeadLine record);
}