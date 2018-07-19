package com.ustb.o2o.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustb.o2o.biz.ProductCategoryBiz;
import com.ustb.o2o.entity.ProductCategory;
import com.ustb.o2o.mapper.ProductCategoryMapper;

@Service(value="productCategoryBiz")
public class ProductCategoryBizImpl implements ProductCategoryBiz {
	@Autowired
	private ProductCategoryMapper productCategoryMapper;
	@Override
	public List<ProductCategory> selectAll() {
		return productCategoryMapper.selectAll();
	}

}
