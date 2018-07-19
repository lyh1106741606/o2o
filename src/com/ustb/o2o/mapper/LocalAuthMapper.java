package com.ustb.o2o.mapper;

import com.ustb.o2o.entity.LocalAuth;

public interface LocalAuthMapper { 
    int deleteByPrimaryKey(Integer localAuthId);

    int insert(LocalAuth record);

    int insertSelective(LocalAuth record);

    LocalAuth selectByPrimaryKey(Integer localAuthId);

	LocalAuth selectLoginAuth(LocalAuth auth); 
	
    int updateByPrimaryKeySelective(LocalAuth record);

    int updateByPrimaryKey(LocalAuth record);
}