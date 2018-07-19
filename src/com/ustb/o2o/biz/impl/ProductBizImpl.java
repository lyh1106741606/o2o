package com.ustb.o2o.biz.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ustb.o2o.biz.ProductBiz;
import com.ustb.o2o.entity.Product;
import com.ustb.o2o.entity.Shop;
import com.ustb.o2o.mapper.ProductMapper;
import com.ustb.o2o.mapper.ShopMapper;

@Service(value="productBiz")
public class ProductBizImpl implements ProductBiz {
	

	
	

	@Autowired
	private ShopMapper shopMapper;
	@Autowired
	private ProductMapper productMapper;
	@Override
	public List<Product> selectByProdCateId(Integer productCategoryId) {
		return productMapper.selectByProdCateId(productCategoryId);
	}
	@Override
	public Product selectByPrimaryKey(Integer productId) {
		return productMapper.selectByPrimaryKey(productId);
	}
	@Override
	public List<Product> selectAll() {
		return productMapper.selectAll();
	}
	@Override
	public List<Product> selectByShopId(Integer shopId) {
		return productMapper.selectByShopId(shopId);
	}
	
	@Override
	public List<Product> selectByAreaId(Integer areaId) {
		List<Shop> shopList = shopMapper.selectShopByAreaId(areaId);
		List<Product> productList = new ArrayList<Product>();;
		for(Shop shop:shopList) {
			productList.addAll(productMapper.selectByShopId(shop.getShopId()));
		}
		return productList;
	}
	@Override
	public List<Product> selectByShopCategoryId(Integer shopCategoryId) {
		List<Shop> shopList = shopMapper.selectShopByShopCategoryId(shopCategoryId);
		List<Product> productList = new ArrayList<Product>();;
		for(Shop shop:shopList) {
			productList.addAll(productMapper.selectByShopId(shop.getShopId()));
		}
		return productList;
	}
	@Override
	public List<Product> selectByProdName(String productName) {
		return productMapper.selectByProdName(productName);
	}
	@Override
	public List<Product> selectByEnableStatus(Integer enableStatus) {
		return productMapper.selectByEnableStatus(enableStatus);
	}
	@Override
	public int updateProductEnableStatusByProductId(Integer productId, Integer enableStatus) {
		Product product = productMapper.selectByPrimaryKey(productId);
		product.setEnableStatus(enableStatus);
		return productMapper.updateByPrimaryKeySelective(product);
	}
}
