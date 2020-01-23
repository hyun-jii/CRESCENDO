package com.crescendo.spring.user.controller.project.step1;


import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.crescendo.spring.user.model.vo.UserVO;

@Controller
public class Step1Controller
{

	private SqlSession sqlsession;

	// setter 주입
	@Autowired
	public void setSqlsession(SqlSession sqlsession)
	{
		this.sqlsession = sqlsession;
	}

	
	

	// 메인에서 > 프로젝트 올리기 버튼 클릭시
	@RequestMapping(value = "/projectcreate.action", method = RequestMethod.POST)
	@ResponseBody
	public String projectCreate(String userEmail)
	{
		
		String result = null;
		
		if(userEmail != "")
		{
			System.out.println("로그인 x");
			result = "1";
		}
		else
		{
			System.out.println("로그인 o");
			result = "0";
		}
		
		return result;
	}


	// 펀드생성 약관 동의 페이지 전환
	@RequestMapping(value = "/step1.action", method = RequestMethod.GET)
	public String step1Check(HttpSession session, HttpServletRequest request)
	{
	
		UserVO vo = (UserVO)session.getAttribute("user");
		
		session.setAttribute("userNum", vo.getUserNum());
				
		
		return "/step1";
	}

	

}