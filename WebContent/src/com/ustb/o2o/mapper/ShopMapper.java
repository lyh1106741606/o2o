package com.ustb.o2o.mapper;

import com.ustb.o2o.entity.Shop;
import java.util.*;

public interface ShopMapper {
    int deleteByPrimaryKey(Integer shopId); 

    int insert(Shop record);

    int insertSelective(Shop record);

    Shop selectByPrimaryKey(Integer shopId); 
    
    List<Shop> selectShopByUserId(Integer userId); 
    
    List<Shop> selectShopByAreaId(Integer areaId);
    
    List<Shop> selectShopByShopCategoryId(Integer shopCategoryId);
    
    List<Shop> selectShopByEnableStatus(Integer enableStatus) ;
    
    List<Shop> selectAll();

    int updateByPrimaryKeySelective(Shop record);

    int updateByPrimaryKey(Shop record);
  
}