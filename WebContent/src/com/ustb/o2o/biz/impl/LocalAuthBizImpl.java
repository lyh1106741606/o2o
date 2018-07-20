package com.ustb.o2o.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustb.o2o.biz.LocalAuthBiz;
import com.ustb.o2o.entity.LocalAuth;
import com.ustb.o2o.mapper.LocalAuthMapper;

@Service(value = "localAuthBiz")
public class LocalAuthBizImpl implements LocalAuthBiz {
	@Autowired
	private LocalAuthMapper localAuthMapper;
	@Override
	public LocalAuth findLoginLocalAuth(LocalAuth auth) {
		return localAuthMapper.selectLoginAuth(auth);
	}
	@Override
	public int addLocalAuth(LocalAuth auth) {
		return localAuthMapper.insert(auth);
	}



	public LocalAuthMapper getLocalAuthMapper() {
		return localAuthMapper;
	}
	public void setLocalAuthMapper(LocalAuthMapper localAuthMapper) {
		this.localAuthMapper = localAuthMapper;
	}
	
}
