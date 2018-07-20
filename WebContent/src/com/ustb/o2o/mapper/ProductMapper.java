package com.ustb.o2o.mapper;

import java.util.List;

import com.ustb.o2o.entity.Product;

public interface ProductMapper {
    int deleteByPrimaryKey(Integer productId);

    int insert(Product record);

    int insertSelective(Product record);

    Product selectByPrimaryKey(Integer productId);
    
    List<Product> selectByProdName(String prodname);
    
    List<Product> selectByProdCateId(Integer productCategoryId);
    
    List<Product> selectByShopId(Integer shopId);
    
    List<Product> selectAll();
    
    List<Product> selectByEnableStatus(Integer enableStatus);
    
    int updateByPrimaryKeySelective(Product record);

    int updateByPrimaryKey(Product record);
}