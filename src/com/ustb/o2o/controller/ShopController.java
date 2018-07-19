package com.ustb.o2o.controller;

import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.ustb.o2o.biz.AreaBiz;
import com.ustb.o2o.biz.ShopBiz;
import com.ustb.o2o.biz.ShopCategoryBiz;
import com.ustb.o2o.entity.Area;
import com.ustb.o2o.entity.PersonInfo;
import com.ustb.o2o.entity.Product;
import com.ustb.o2o.entity.Shop;
import com.ustb.o2o.entity.ShopCategory;

@Controller
@RequestMapping(value="shop")
public class ShopController {
	@Autowired
	private AreaBiz areaBiz;
	@Autowired
	private ShopCategoryBiz shopCategoryBiz;
	@Autowired
	private ShopBiz shopBiz;
	@RequestMapping(value="addInit")
	public String addInit(HttpSession session) {
		List<ShopCategory> shopCategoryList = shopCategoryBiz.selectAll();
		List<Area> areaList = areaBiz.selectAll();
		session.setAttribute("shopCategoryList", shopCategoryList);
		session.setAttribute("areaList", areaList);
		return "addshop";
	}
	@RequestMapping(value="add")
	public String add(MultipartFile image, Shop shop, HttpServletRequest request, HttpSession session) throws Exception{
		if(image != null && image.getOriginalFilename() != null) {
			String fileName = image.getOriginalFilename();
			String savePath = request.getServletContext().getRealPath("/shop_images/" + fileName);
			File file = new File(savePath);
			image.transferTo(file);
			shop.setShopImg(fileName);
		}
		shop.setCreateTime(new Date());
		shop.setEnableStatus(1);
		shop.setLastEditTime(new Date());
		shop.setAdvice("新申请");
		//获取登陆用户信息
		PersonInfo person = (PersonInfo)session.getAttribute("person");
		shop.setOwnerId(person.getUserId());
		shopBiz.addShop(shop);
		return "redirect:/shop_manager.jsp";
	}
			//管理员管理商店初始化
			@RequestMapping(value="adminManageShopInit")
			public String manageInit(HttpSession session, Map map) {
				PersonInfo person = (PersonInfo)session.getAttribute("person");
				//如果session中没有person，则重新登陆
				if(person == null) {
					return "redirect:/login.jsp";
				}else {
				session.setAttribute("person", person);
				//查询未审核的商店
				List<Shop> shop0List = shopBiz.selectShopByEnableStatus(0);
				map.put("shop0List", shop0List);
				//查询已审核的商店
				List<Shop> shop1List = shopBiz.selectShopByEnableStatus(1);
				map.put("shop1List", shop1List);
				}
				return "admin_manage_shop";
			}
			//管理员管理商店
			@RequestMapping(value="adminManageShop")
			public String adminManage(HttpSession session, Map map , Integer option , Integer shopId) {
				PersonInfo person = (PersonInfo)session.getAttribute("person");
				//如果session中没有person，则重新登陆
				if(person == null) {
					return "redirect:/login.jsp";
				}else {
					session.setAttribute("person",person);
					shopBiz.updateShopEnableStatusByShopId(shopId, option);
				}
				return "redirect:/shop/adminManageShopInit.do";
			}
}
