package com.ustb.o2o.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ustb.o2o.biz.LocalAuthBiz;
import com.ustb.o2o.biz.PersonInfoBiz;
import com.ustb.o2o.entity.LocalAuth;
import com.ustb.o2o.entity.PersonInfo;

@Controller
@RequestMapping(value = "auth")
public class LocalAuthController {
	@Autowired
	private LocalAuthBiz localAuthBiz;
	@Autowired
	private PersonInfoBiz personInfoBiz;
	@RequestMapping(value = "login")
	public String login(HttpSession session , LocalAuth auth) {
		LocalAuth loginAuth = localAuthBiz.findLoginLocalAuth(auth);
		if(loginAuth == null) {
			session.setAttribute("msg", "");
			return "redirect:/login.jsp";
		}else {
			//登陆成功之后查询用户的详细信息
			PersonInfo person = personInfoBiz.findPersonByUserId(loginAuth.getUserId());
			session.setAttribute("person", person);
			if(person.getEnableStatus() == 0) {
				session.setAttribute("msg", "用户已经被冻结，请联系管理员处理！");
				return "redirect:/login.jsp";
			}else if(person.getUserType() == 1) {
				//普通用户
				session.setAttribute("msg", "");
				return "redirect:/main/init.do";	
			}else if(person.getUserType() == 2) {
				//商店店主
				session.setAttribute("msg", "");
				return "redirect:/shop_manager.jsp";
			}else if(person.getUserType() == 3) {
				//管理员
				session.setAttribute("msg", "");
				return "redirect:/admin_manager.jsp";
			}
		}
		return "main";
	}
	@RequestMapping(value = "add")
	public String login(LocalAuth auth) {
		auth.setCreateTime(new Date());
		auth.setLastEditTime(new Date());
		localAuthBiz.addLocalAuth(auth);
		return "redirect:/login.jsp";
	}
	
	public LocalAuthBiz getLocalAuthBiz() {
		return localAuthBiz;
	}
	public void setLocalAuthBiz(LocalAuthBiz localAuthBiz) {
		this.localAuthBiz = localAuthBiz;
	}
	
}
