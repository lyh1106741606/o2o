package com.ustb.o2o.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustb.o2o.biz.AreaBiz;
import com.ustb.o2o.entity.Area;
import com.ustb.o2o.mapper.AreaMapper;

@Service(value="areaBiz")
public class AreaBizImpl implements AreaBiz {
	@Autowired
	private AreaMapper areaMapper;
	@Override
	public List<Area> selectAll() {
		return areaMapper.selectAll();
	}

}
