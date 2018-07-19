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

import com.ustb.o2o.biz.PersonInfoBiz;
import com.ustb.o2o.entity.PersonInfo;
import com.ustb.o2o.entity.Shop;

@Controller
@RequestMapping(value = "personInfo")
public class PersonInfoController {
	@Autowired
	private PersonInfoBiz personInfoBiz;
	@RequestMapping(value="add")
	public String add(MultipartFile image, PersonInfo personInfo, HttpServletRequest request) throws Exception{
		//判断是否有上传的图像
		if(image != null && image.getOriginalFilename() != null) {
			String fileName = image.getOriginalFilename();
			String savePath = request.getServletContext().getRealPath("/head_images/" + fileName);
			File file = new File(savePath);
			image.transferTo(file);	//保存文件
			personInfo.setProfileImg(fileName);	//设置用户头像名称
		}
		personInfo.setCreateTime(new Date());
		personInfo.setEnableStatus(1);
		personInfo.setLastEditTime(new Date());
		personInfoBiz.insertPerson(personInfo);
		request.setAttribute("personInfo", personInfo);
		return "addauth";
	}
	//管理员管理用户初始化
	@RequestMapping(value="adminManagePersonInit")
	public String manageInit(HttpSession session, Map map) {
		PersonInfo person = (PersonInfo)session.getAttribute("person");
		//如果session中没有person，则重新登陆
		if(person == null) {
			return "redirect:/login.jsp";
		}else {
		session.setAttribute("person", person);
		//查询冻结的用户
		List<PersonInfo> person0List = personInfoBiz.selectPersonByEnableStatus(0);
		map.put("person0List", person0List);
		//查询正常的用户
		List<PersonInfo> person1List = personInfoBiz.selectPersonByEnableStatus(1);
		map.put("person1List", person1List);
		
		}
		return "admin_manage_person";
	}
	//管理员管理用户
	@RequestMapping(value="adminManagePerson")
	public String adminManage(HttpSession session, Map map , Integer option , Integer userId) {
		PersonInfo person = (PersonInfo)session.getAttribute("person");
		//如果session中没有person，则重新登陆
		if(person == null) {
			return "redirect:/login.jsp";
		}else {
			session.setAttribute("person",person);
			personInfoBiz.updataPersonInfoEnableStatusByUserId(userId, option);
		}
		return "redirect:/personInfo/adminManagePersonInit.do";
	}

}
