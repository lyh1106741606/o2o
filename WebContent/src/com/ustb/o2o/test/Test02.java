package com.ustb.o2o.test;

import java.io.*;
//import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.ustb.o2o.entity.*;
import com.ustb.o2o.mapper.*;

/*import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.ustb.o2o.mapper.LocalAuthMapper;*/

public class Test02 {

	public static void main(String[] args) {
		try {
			File file = new File("src/mybatis.xml");
			InputStream is = new FileInputStream(file);
			//根据文件流生成Session工厂
			SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(is);
			//获取session对象
			SqlSession session = sessionFactory.openSession();
			AreaMapper areaMapper = session.getMapper(AreaMapper.class); 
			//insert
			Area a = new Area();
			a.setAreaName("学院路");
			int num = areaMapper.insertSelective(a);
			System.out.println(num);
			//close
			session.commit();
			session.close();
		}catch(Exception ex){
			ex.printStackTrace();
		}

	}

}
