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

import com.ustb.o2o.entity.ProductCategory;
import com.ustb.o2o.entity.Shop;
import com.ustb.o2o.biz.LocalAuthBiz;
import com.ustb.o2o.biz.PersonInfoBiz;
import com.ustb.o2o.biz.ProductBiz;
import com.ustb.o2o.biz.ProductCategoryBiz;
import com.ustb.o2o.biz.ShopBiz;
import com.ustb.o2o.entity.PersonInfo;
import com.ustb.o2o.entity.Product;
import com.ustb.o2o.entity.ProductCategory;

@Controller
@RequestMapping("product")
public class ProductController {
	@Autowired 
	private ProductBiz productBiz;
	@Autowired
	private ProductCategoryBiz productCategoryBiz;
	@Autowired
	private PersonInfoBiz personInfoBiz;
	@Autowired
	private LocalAuthBiz localAuthBiz;
	@Autowired
	private ShopBiz shopBiz;
	//根据商品的ID显示旗下所有商品
	@RequestMapping(value="cateId")
	public String prodByCateId(HttpSession session, Map map, Integer productCategoryId) {
		PersonInfo person = (PersonInfo)session.getAttribute("person");
		//如果session中没有person，则重新登陆
		if(person == null) {
			return "redirect:/login.jsp";
		}else {
		session.setAttribute("person", person);
		List<Product> productList = productBiz.selectByProdCateId(productCategoryId);
		map.put("productList", productList);
		}
		return "list";
	}
	//根据商店的ID显示旗下所有商品
		@RequestMapping(value="shopId")
		public String prodByShopId(HttpSession session, Map map, Integer shopId) {
			PersonInfo person = (PersonInfo)session.getAttribute("person");
			//如果session中没有person，则重新登陆
			if(person == null) {
				return "redirect:/login.jsp";
			}else {
			session.setAttribute("person", person);
			List<Product> productList = productBiz.selectByShopId(shopId);
			map.put("productList", productList);
			}
			return "list";
		}
		//根据区域的ID显示旗下所有商品
		@RequestMapping(value="areaId")
		public String prodByAreaId(HttpSession session, Map map, Integer areaId) {
			PersonInfo person = (PersonInfo)session.getAttribute("person");
			//如果session中没有person，则重新登陆
			if(person == null) {
				return "redirect:/login.jsp";
			}else {
				session.setAttribute("person", person);
				List<Product> productList = productBiz.selectByAreaId(areaId);
				map.put("productList", productList);
			}
			return "list";
		}
		//根据商店类型的ID显示旗下所有商品
		@RequestMapping(value="shopCategoryId")
		public String prodByShopCategoryId(HttpSession session, Map map, Integer shopCategoryId) {
			PersonInfo person = (PersonInfo)session.getAttribute("person");
			//如果session中没有person，则重新登陆
			if(person == null) {
				return "redirect:/login.jsp";
			}else {
				session.setAttribute("person", person);
				List<Product> productList = productBiz.selectByShopCategoryId(shopCategoryId);
				map.put("productList", productList);
			}
			return "list";
		}
		//根据商品名称模糊查询显示旗下所有商品
				@RequestMapping(value="productName")
				public String prodByProductName(HttpSession session, Map map, String productName) {
					PersonInfo person = (PersonInfo)session.getAttribute("person");
					//如果session中没有person，则重新登陆
					if(person == null) {
						return "redirect:/login.jsp";
					}else {
						session.setAttribute("person", person);
						List<Product> productList = productBiz.selectByProdName(productName);
						map.put("productList", productList);
					}
					return "list";
				}
				//管理员管理商品的初始化
				@RequestMapping(value="adminManageProductInit")
				public String adminManageProductInit(HttpSession session, Map map) {
					PersonInfo person = (PersonInfo)session.getAttribute("person");
					//如果session中没有person，则重新登陆
					if(person == null) {
						return "redirect:/login.jsp";
					}else {
						session.setAttribute("person", person);
						//未审核商品
						List<Product> product0List = productBiz.selectByEnableStatus(0);
						map.put("product0List", product0List);
						//已审核商品
						List<Product> product1List = productBiz.selectByEnableStatus(1);
						map.put("product1List", product1List);
					}
					return "admin_manage_product";
				}
				//管理员管理商品
				@RequestMapping(value="adminManageProduct")
				public String adminManageProduct(HttpSession session, Integer productId, Integer option) {
					PersonInfo person = (PersonInfo)session.getAttribute("person");
					//如果session中没有person，则重新登陆
					if(person == null) {
						return "redirect:/login.jsp";
					}else {
						session.setAttribute("person", person);
						productBiz.updateProductEnableStatusByProductId(productId, option);
					}
					
				   return "redirect:/product/adminManageProductInit.do";
					
				}
				//店家停止出售商品
				@RequestMapping(value="ownerDeleteProduct")
				public String OwnerDeleteProduct(HttpSession session, Integer productId, Integer option) {
					PersonInfo person = (PersonInfo)session.getAttribute("person");
					//如果session中没有person，则重新登陆
					if(person == null) {
						return "redirect:/login.jsp";
					}else {
						session.setAttribute("person", person);
						productBiz.delproduct(productId);
					}
					Shop shop= (Shop)session.getAttribute("shop");
					int sid = shop.getShopId();
				   return "redirect:/shop/detail.do?shopId="+sid;
					
				}

		
	@RequestMapping(value="detail")
	public String prodDetail(HttpSession session, Integer productId) {
		Product product = productBiz.selectByPrimaryKey(productId);
		session.setAttribute("product", product);
		return "product_detail";
	}
	
	@RequestMapping(value="add")
	public String add(MultipartFile image,Product product,
			HttpServletRequest request, HttpSession session)
	throws Exception
	{
		
		Shop shop = (Shop)session.getAttribute("shop");
		if(image!=null&& image.getOriginalFilename()!=null) {
			String filename = image.getOriginalFilename();
			String savepath = request.getServletContext()
					.getRealPath("/image/floor/"+filename);
			File file= new File(savepath);
			image.transferTo(file);
			product.setImgAddr(filename);
		}
		product.setCreateTime(new Date());
		product.setEnableStatus(1);
		product.setLastEditTime(new Date());
		product.setPriority(0);
		
		//Shop shop = (Shop)session.getAttribute("shop");
		Integer sid = shop.getShopId();
		product.setShopId(shop.getShopId());
		
		productBiz.addproduct(product);
		return "redirect:/shop/detail.do?shopId="+sid;
	}
	
	@RequestMapping(value="addInit")
	public String addInit(Integer sid,HttpSession session)
	{
		List<ProductCategory> productcategoryList = productCategoryBiz.selectAll();
		session.setAttribute("productcategoryList", productcategoryList);
		Shop shop = shopBiz.selectShopById(sid);
		session.setAttribute("shop", shop);
		return "addproduct";
	}
	
}
