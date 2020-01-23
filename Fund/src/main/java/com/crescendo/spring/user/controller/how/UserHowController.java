package com.crescendo.spring.user.controller.how;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crescendo.spring.admin.model.dao.how.IHowDAO;

@Controller
public class UserHowController 
{
	@Autowired
	private IHowDAO dao;
	
	// setter 주입
	public void setDao(IHowDAO dao) {
		this.dao = dao;
	}
	
	// 사용자 페이지의 이용방법을 출력해주는 구문
	@RequestMapping(value = "/howusemain.action", method = RequestMethod.GET)
	public String howUseList(Model model)
	{
		model.addAttribute("lists", dao.howList());
		
		return "/HowToUse";
	}
}

	