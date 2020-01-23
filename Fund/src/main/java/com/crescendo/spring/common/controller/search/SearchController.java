package com.crescendo.spring.common.controller.search;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.crescendo.spring.common.model.dao.search.ISearchDAO;
import com.crescendo.spring.user.model.vo.projectpage.ProjectPageVO;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class SearchController
{
	private SqlSession sqlSession;
	
	@Autowired
	public void setSqlSession(SqlSession sqlSession)
	{
		this.sqlSession = sqlSession;
	}


	// 추천 검색어
	@RequestMapping(value = "/searchbox.action", method = RequestMethod.GET,produces = "application/text; charset=utf8")
	@ResponseBody
	public String searchBox(String keyword, Model model) 
	{
	
		ISearchDAO searchDAO = sqlSession.getMapper(ISearchDAO.class);
		List<ProjectPageVO> list = new ArrayList<ProjectPageVO>();
		System.out.println(keyword);
		
		ObjectMapper mapper = new ObjectMapper();
		String str = null;
		
		try
		{
			
			list = searchDAO.searchBoxTitle(keyword);
			

			Iterator<ProjectPageVO> it = list.iterator();
			while(it.hasNext())
			{
				ProjectPageVO str2 = (ProjectPageVO)it.next();
				System.out.println(str2.getPrjTitle());
				
			}
			
			//String a = list.get(0).getPrjTitle();
			//System.out.println("내가 title값만 뽑아낸값 : " + a);
			
			System.out.println("list값 객체 값 :" + list);
				
			
			model.addAttribute("searchBoxTitle", searchDAO.searchBoxTitle(keyword));
			List<ProjectPageVO> ppvo = searchDAO.searchBoxTitle(keyword);
			
			//searchDAO.searchBoxTag(keyword);
			//searchDAO.searchBoxMaker(keyword);
			str = mapper.writeValueAsString(list);
			
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}

		System.out.println("str값 :  " + str);
		return str;
	}
	
	// 검색기능
	@RequestMapping(value = "/search.action", method = RequestMethod.GET) 
	public String search(String prjTitle, Model model) 
	{
		ISearchDAO searchDAO = sqlSession.getMapper(ISearchDAO.class);
		
		try
		{
			// 입력받은 키워드
			model.addAttribute("keyword", prjTitle);
			
			// 검색 키워드별 프로젝트 수
			model.addAttribute("searchCount", searchDAO.searchCount(prjTitle));
			
			
			// 검색 키워드에 따른 리스트
			model.addAttribute("searchList",searchDAO.searchList(prjTitle));
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
	  
		return "ProjectPage"; 
	  
	}
	 
	

}
