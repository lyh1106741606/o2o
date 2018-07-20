package com.ustb.o2o.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustb.o2o.biz.HeadLineBiz;
import com.ustb.o2o.entity.HeadLine;
import com.ustb.o2o.mapper.HeadLineMapper;
@Service(value="headLine")
public class HeadLineBizImpl implements HeadLineBiz {
	@Autowired
	private HeadLineMapper headLineMapper;
	@Override
	public List<HeadLine> selectAll() {
		return headLineMapper.selectAll();
	}

}
