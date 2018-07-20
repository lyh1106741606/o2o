package com.ustb.o2o.biz;

import java.util.List;

import com.ustb.o2o.entity.PersonInfo;

public interface PersonInfoBiz {
	PersonInfo findPersonByUserId(Integer userId);
	
	List<PersonInfo> selectPersonByEnableStatus(Integer enableStatus);
	
	int insertPerson(PersonInfo personInfo);
	
	int updataPersonInfoEnableStatusByUserId(Integer userId , Integer enableStatus);
}
