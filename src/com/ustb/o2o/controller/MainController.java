package com.ustb.o2o.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ustb.o2o.biz.AreaBiz;
import com.ustb.o2o.biz.HeadLineBiz;
import com.ustb.o2o.biz.ProductBiz;
import com.ustb.o2o.biz.ProductCategoryBiz;
import com.ustb.o2o.biz.ShopBiz;
import com.ustb.o2o.biz.ShopCategoryBiz;
import com.ustb.o2o.entity.Area;
import com.ustb.o2o.entity.HeadLine;
import com.ustb.o2o.entity.PersonInfo;
import com.ustb.o2o.entity.Product;
import com.ustb.o2o.entity.ProductCategory;
import com.ustb.o2o.entity.Shop;
import com.ustb.o2o.entity.ShopCategory;

@Controller
@RequestMapping("main")
public class MainController {
	@Autowired
	private ProductCategoryBiz productCategoryBiz;
	@Autowired
	private AreaBiz areaBiz;
	@Autowired
	private ShopCategoryBiz shopCategoryBiz;
	@Autowired
	private ProductBiz productBiz;
	@Autowired
	private ShopBiz shopBiz;
	@Autowired
	private HeadLineBiz headLineBiz;
	
	@RequestMapping(value="init")
	public String init(HttpSession session , Map map) {
		PersonInfo person = (PersonInfo)session.getAttribute("person");
		//如果session中没有person，则重新登陆
		if(person == null) {
			return "redirect:/login.jsp";
		}else {
		session.setAttribute("person", person);
		}
		//加载商品类型
		List<ProductCategory> productCategoryList = productCategoryBiz.selectAll();
		map.put("productCategoryList", productCategoryList);
		//加载地区
		List<Area> areaList = areaBiz.selectAll();
		map.put("areaList", areaList);
		//加载商店类型
		List<ShopCategory> shopCategoryList = shopCategoryBiz.selectAll();
		map.put("shopCategoryList", shopCategoryList);
		//加载商品
		List<Product> productList = productBiz.selectAll();
		map.put("productList", productList);
		//加载商店
		List<Shop> shopList = shopBiz.selectAll();
		map.put("shopList", shopList);
		//加载头条
		List<HeadLine> headLineList = headLineBiz.selectAll();
		map.put("headLineList", headLineList);		
		return "index";
	}
}
