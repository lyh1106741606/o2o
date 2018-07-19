package com.ustb.o2o.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustb.o2o.biz.PersonInfoBiz;
import com.ustb.o2o.entity.PersonInfo;
import com.ustb.o2o.mapper.PersonInfoMapper;
@Service(value="personInfoBiz")
public class PersonInfoBizImpl implements PersonInfoBiz {
	
	@Autowired
	private PersonInfoMapper personInfoMapper;
	@Override
	public PersonInfo findPersonByUserId(Integer userId) {
		return personInfoMapper.selectByPrimaryKey(userId);
	}
	public PersonInfoMapper getPersonInfoMapper() {
		return personInfoMapper;
	}
	public void setPersonInfoMapper(PersonInfoMapper personInfoMapper) {
		this.personInfoMapper = personInfoMapper;
	}
	@Override
	public int insertPerson(PersonInfo personInfo) {
		return personInfoMapper.insert(personInfo);
	}
	@Override
	public int updataPersonInfoEnableStatusByUserId(Integer userId, Integer enableStatus) {
		PersonInfo person = personInfoMapper.selectByPrimaryKey(userId);
		person.setEnableStatus(enableStatus);
		return personInfoMapper.updateByPrimaryKeySelective(person);
	}
	@Override
	public List<PersonInfo> selectPersonByEnableStatus(Integer enableStatus) {
		return personInfoMapper.selectPersonByEnableStatus(enableStatus);
	}
}
