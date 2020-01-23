package com.crescendo.spring.user.controller.charge;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crescendo.spring.admin.model.dao.charge.IChargeDAO;

@Controller
public class UserChargeController 
{
	@Autowired
	private IChargeDAO dao;
	
	// setter 주입
	public void setDao(IChargeDAO dao) {
		this.dao = dao;
	}
	
	// 사용자 페이지의 수수료 정책을 출력해주는 구문
	@RequestMapping(value = "/chargemain.action", method = RequestMethod.GET)
	public String chargeList(Model model)
	{
		try 
		{
			model.addAttribute("lists", dao.chargeList());
			
		} catch (Exception e) 
		{
			System.out.println(e.toString());
		}
		return "/Charge";
	}
}
