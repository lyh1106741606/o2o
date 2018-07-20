package com.ustb.o2o.mapper;

import java.util.List;

import com.ustb.o2o.entity.PersonInfo;

public interface PersonInfoMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(PersonInfo record);

    int insertSelective(PersonInfo record);

    PersonInfo selectByPrimaryKey(Integer userId);
    
    List<PersonInfo> selectPersonByEnableStatus(Integer enableStatus);

    int updateByPrimaryKeySelective(PersonInfo record);

    int updateByPrimaryKey(PersonInfo record);
}