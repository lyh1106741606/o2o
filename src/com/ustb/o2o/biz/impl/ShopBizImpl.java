package com.ustb.o2o.biz.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustb.o2o.biz.ShopBiz;
import com.ustb.o2o.entity.Shop;
import com.ustb.o2o.mapper.ShopMapper;

@Service(value="shopBiz")
public class ShopBizImpl implements ShopBiz {
	


	
	@Autowired
	private ShopMapper shopMapper;
	@Override
	public int addShop(Shop shop) {
		return shopMapper.insert(shop);
	}
	@Override
	public List<Shop> selectAll() {
		return shopMapper.selectAll();
	}
	@Override
	public List<Shop> selectShopByAreaId(Integer areaId) {
		return shopMapper.selectShopByAreaId(areaId);
	}
	@Override
	public List<Shop> selectShopByShopCategoryId(Integer shopCategoryId) {
		return shopMapper.selectShopByShopCategoryId(shopCategoryId);
	}
	@Override
	public List<Shop> selectShopByEnableStatus(Integer enableStatus) {
		return shopMapper.selectShopByEnableStatus(enableStatus);
	}
	@Override
	public Shop selectByPrimaryKey(Integer shopId) {
		return shopMapper.selectByPrimaryKey(shopId);
	}
	@Override
	public int updateShopEnableStatusByShopId(Integer shopId, Integer enableStatus) {
		Shop shop = shopMapper.selectByPrimaryKey(shopId);
		shop.setEnableStatus(enableStatus);
		shop.setLastEditTime(new Date());
		shop.setAdvice("已修改");
		return shopMapper.updateByPrimaryKeySelective(shop);
	}
	@Override
	public List<Shop> selectShopByUserId(Integer userId) {
		return shopMapper.selectShopByUserId(userId);
	}
}
