package com.ustb.o2o.biz;

import java.util.List;

import com.ustb.o2o.entity.Product;

public interface ProductBiz {
	int addproduct(Product product);
	List<Product> selectByProdCateId(Integer productCategoryId);
	List<Product> selectByProdName(String productName);
	List<Product> selectByShopId(Integer shopId);
	List<Product> selectByAreaId(Integer areaId);
	List<Product> selectByShopCategoryId(Integer shopCategoryId);
	List<Product> selectByEnableStatus(Integer enableStatus);
	List<Product> selectAll();
	Product selectByPrimaryKey(Integer productId);
	int updateProductEnableStatusByProductId(Integer productId, Integer enableStatus);
}
