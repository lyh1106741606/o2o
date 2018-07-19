package com.ustb.o2o.biz;

import java.util.List;

import com.ustb.o2o.entity.Shop;

public interface ShopBiz {
	int addShop(Shop shop);
	
	int updateShopEnableStatusByShopId(Integer shopId , Integer enableStatus);
	
	Shop selectByPrimaryKey(Integer shopId); 
	
	List<Shop> selectShopByAreaId(Integer areaId);
	
	List<Shop> selectShopByShopCategoryId(Integer shopCategoryId);
	
	List<Shop> selectShopByEnableStatus(Integer enableStatus);
	
	List<Shop> selectAll();
	
}
