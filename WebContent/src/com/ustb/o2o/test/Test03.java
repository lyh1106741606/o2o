package com.ustb.o2o.test;

import java.util.Date;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ustb.o2o.entity.PersonInfo;
import com.ustb.o2o.entity.Product;
import com.ustb.o2o.mapper.PersonInfoMapper;
import com.ustb.o2o.mapper.ProductMapper;

public class Test03 {
	//Spring测试
	public static void main(String[] args) {
		//load spring
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		//instance 1: get info
		ProductMapper pm = (ProductMapper)ac.getBean("productMapper");
		Product p = pm.selectByPrimaryKey(6);
		System.out.println(p.getProductName() + "\t" + p.getNormalPrice());
		System.out.println();
		//instance 2: insert a person
		PersonInfoMapper pim = (PersonInfoMapper)ac.getBean("personInfoMapper");
		PersonInfo pi = new PersonInfo();
		pi.setName("长孙无极");
		pi.setEmail("zhnagsunwuji@fy.com");
		pi.setCreateTime(new Date());
		pi.setLastEditTime(new Date());
		System.out.println(pim.insertSelective(pi)); 
	}

}
