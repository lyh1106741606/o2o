package com.ustb.o2o.test;

import java.io.*;
import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.ustb.o2o.entity.*;
import com.ustb.o2o.mapper.*;

public class Test01 {


	public static void main(String args[]){
		try{ 
			
			File file = new File("src/mybatis.xml");
			InputStream is = new FileInputStream(file);
			//根据文件流生成Session工厂
			SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(is);
			//获取session对象
			SqlSession session = sessionFactory.openSession();
			LocalAuthMapper authMapper = session.getMapper(LocalAuthMapper.class);
			//测试登陆
			Scanner sc = new Scanner(System.in);
			System.out.println("请输入用户名：");
			String username = sc.next();
			System.out.println("请输入密码：");
			String key = sc.next();
			
			LocalAuth la = new LocalAuth();
			la.setUsername(username);
			la.setPassword(key);
			
			LocalAuth test = authMapper.selectLoginAuth(la);
			if(test == null) {
				System.out.println("登陆失败！用户名不存在或密码不正确！");
			}else {
				System.out.println("登陆成功！");
				System.out.println("欢迎你，" + username + "！");
				//查询商店
				ShopMapper shopMapper = session.getMapper(ShopMapper.class);
				List<Shop> shopList = shopMapper.selectShopByUserId(test.getUserId());
				for(Shop shop : shopList) {
					System.out.println(shop.getShopName() + "\t" + shop.getShopAddr());
				}
			}
	
			//关闭
			sc.close();
			session.commit();
			session.close();
		}catch(Exception ex){
			ex.printStackTrace();
		}

		 
	}

}
