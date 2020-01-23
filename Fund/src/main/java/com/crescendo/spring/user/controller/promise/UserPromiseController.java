package com.crescendo.spring.user.controller.promise;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crescendo.spring.admin.model.dao.charge.IChargeDAO;

@Controller
public class UserPromiseController 
{
	@Autowired
	private IChargeDAO dao;
	
	// setter 주입
	public void setDao(IChargeDAO dao) {
		this.dao = dao;
	}
	
	// 사용자 페이지의 이용약관을 출력해주는 구문
	@RequestMapping(value = "/usemain.action", method = RequestMethod.GET)
	public String promiseList(Model model)
	{
		try 
		{
			model.addAttribute("lists", dao.promiseList());
			
		} catch (Exception e) 
		{
			System.out.println(e.toString());
		}
		return "/UseClause";
	}
}