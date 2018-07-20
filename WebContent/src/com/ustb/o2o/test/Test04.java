package com.ustb.o2o.test;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ustb.o2o.entity.Product;
import com.ustb.o2o.mapper.ProductMapper;

public class Test04 {

	public static void main(String[] args) {
/*		//load 
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		ProductMapper pm = (ProductMapper)ac.getBean("productMapper");
		//update: 把5号商品的价格修改为100
		Product p = pm.selectByPrimaryKey(5);
		p.setNormalPrice("100");
		System.out.println(pm.updateByPrimaryKeySelective(p));*/
		
		//load 
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		ProductMapper pm = (ProductMapper)ac.getBean("productMapper");
		//select: 查询名字包括"奶茶"的产品列表
		List<Product> pList = pm.selectByProdName("奶茶");
		for(Product p : pList) {
			System.out.println(p.getProductName() + "\t" + p.getNormalPrice());
		}
	}

}
