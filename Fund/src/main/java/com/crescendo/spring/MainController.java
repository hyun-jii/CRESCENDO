package com.crescendo.spring;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crescendo.spring.admin.model.dao.category.ICategoryDAO;
import com.crescendo.spring.user.model.dao.projectpage.IProjectPageDAO;
import com.crescendo.spring.user.model.vo.projectpage.ProjectPageVO;

@Controller
public class MainController
{
	
	private SqlSession sqlSession;

	@Autowired
	public void setSqlSession(SqlSession sqlSession)
	{
		this.sqlSession = sqlSession;
	}


	// 메인으로 이동 GET 방식
	@RequestMapping(value = "/main.action", method = RequestMethod.GET)
	public String mainGet(HttpServletRequest request,Model model, HttpSession session)
	{
		IProjectPageDAO projectPageDAO = sqlSession.getMapper(IProjectPageDAO.class);
		ICategoryDAO categoryDAO = sqlSession.getMapper(ICategoryDAO.class);
		
		try
		{
			session.setAttribute("category", categoryDAO.cateList());
			// 메인 인기순 프로젝트
			model.addAttribute("mainList_popular",projectPageDAO.mainList_popular());
			// 메인 마감임박순 프로젝트
			model.addAttribute("mainList_deadline", projectPageDAO.mainList_deadline());
			// 메인 최신순 프로젝트
			model.addAttribute("mainList_new", projectPageDAO.mainList_new());
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return "Main";
	}
	// 메인으로 이동 POST 방식
	@RequestMapping(value = "/main.action", method =  RequestMethod.POST)
	public String mainPost(HttpServletRequest request,Model model)
	{
		IProjectPageDAO projectPageDAO = sqlSession.getMapper(IProjectPageDAO.class);
		ICategoryDAO categoryDAO = sqlSession.getMapper(ICategoryDAO.class);
		
		try
		{
			model.addAttribute("category", categoryDAO.cateList());
			// 메인 인기순 프로젝트
			model.addAttribute("mainList_popular",projectPageDAO.mainList_popular());
			// 메인 마감임박순 프로젝트
			model.addAttribute("mainList_deadline", projectPageDAO.mainList_deadline());
			// 메인 최신순 프로젝트
			model.addAttribute("mainList_new", projectPageDAO.mainList_new());
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return "Main";
	}
	
	
}
	    
	    