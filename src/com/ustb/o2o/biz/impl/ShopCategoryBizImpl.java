package com.ustb.o2o.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustb.o2o.biz.ShopCategoryBiz;
import com.ustb.o2o.entity.ShopCategory;
import com.ustb.o2o.mapper.ShopCategoryMapper;

@Service(value="shopCategoryBiz")
public class ShopCategoryBizImpl implements ShopCategoryBiz {
	@Autowired
	private ShopCategoryMapper shopCategoryMapper;
	@Override
	public List<ShopCategory> selectAll() {
		return shopCategoryMapper.selectAll();
	}

}
