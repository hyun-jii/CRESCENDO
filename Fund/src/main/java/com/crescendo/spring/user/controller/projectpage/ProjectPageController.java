package com.crescendo.spring.user.controller.projectpage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crescendo.spring.common.model.dao.search.ISearchDAO;
import com.crescendo.spring.user.model.dao.projectpage.IProjectPageDAO;

@Controller
public class ProjectPageController
{
	
	private SqlSession sqlSession;
	
	@Autowired
	public void setSqlSession(SqlSession sqlSession)
	{
		this.sqlSession = sqlSession;
	}
	
	//포워딩 
	private void forward(HttpServletRequest request, HttpServletResponse response, String path) throws ServletException, IOException 
	{ 
		//포워딩 
		RequestDispatcher rd = request.getRequestDispatcher(path); 
		rd.forward(request, response); 
	}



	// 메인 카테고리 아이콘당 페이지 전환
	@RequestMapping(value = "/category.action", method = RequestMethod.GET)
	public String categoryPage(HttpServletRequest request, HttpServletResponse response, Model model)
	{
		String cp = request.getContextPath();
		IProjectPageDAO projectPageDAO = sqlSession.getMapper(IProjectPageDAO.class);
		
		
		// 카테고리 번호 수신
		int caNum = Integer.parseInt(request.getParameter("caNum"));
		String state = request.getParameter("state");
		String sort = request.getParameter("sort");
		
		try
		{
			// 카테고리별 프로젝트 수(전체 프로젝트)
			int totalPrjCount = projectPageDAO.totalPrjCount(caNum);
			// 카테고리별 프로젝트 수(진행중인 프로젝트)
			int ingPrjCount = projectPageDAO.ingPrjCount(caNum);
			// 카테고리별 프로젝트 수(마감한 프로젝트)
			int endPrjCount = projectPageDAO.endPrjCount(caNum);
			// 전체 프로젝트 수
			int totalCount = projectPageDAO.totalCount();
			
			
			model.addAttribute("state", state);
			model.addAttribute("sort", sort);
			model.addAttribute("caNum", caNum);
			
			
			// 카테고리별 프로젝트 수 (전체 프로젝트)
			model.addAttribute("totalPrjCount",totalPrjCount);
			// 카테고리별 프로젝트 수 (진행중인 프로젝트)
			model.addAttribute("ingPrjCount", ingPrjCount);
			// 카테고리별 프로젝트 수 (마감한 프로젝트)
			model.addAttribute("endPrjCount", endPrjCount);
			// 전체 프로젝트 수
			model.addAttribute("totalCount", totalCount);
			
			
			// 카테고리별 프로젝트 리스트( 전체프로젝트 - 인기순)
			model.addAttribute("totalList_popular", projectPageDAO.totalList_popular(caNum));
			// 카테고리별 프로젝트 리스트( 전체프로젝트 - 최신순)
			model.addAttribute("totalList_new",projectPageDAO.totalList_new(caNum));
			// 카테고리별 프로젝트 리스트( 전체프로젝트 - 마감임박순)
			model.addAttribute("totalList_deadline", projectPageDAO.totalList_deadline(caNum));
			// 카테고리별 프로젝트 리스트( 진행중인프로젝트 - 인기순)
			model.addAttribute("ingList_popular", projectPageDAO.ingList_popular(caNum));
			// 카테고리별 프로젝트 리스트( 진행중인프로젝트 - 최신순)
			model.addAttribute("ingList_new", projectPageDAO.ingList_new(caNum));
			// 카테고리별 프로젝트 리스트( 진행중인프로젝트 - 마감임박순)
			model.addAttribute("ingList_deadline", projectPageDAO.ingList_deadline(caNum));
			// 카테고리별 프로젝트 리스트( 마감한프로젝트)
			model.addAttribute("endList", projectPageDAO.endList(caNum));
			// 전체 프로젝트 리스트
			model.addAttribute("totalList", projectPageDAO.totalList());
			
			
									
			
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return "ProjectPage";
					
	}
}
