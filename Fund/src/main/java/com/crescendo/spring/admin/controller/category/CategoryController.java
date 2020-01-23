/*============================
	CategoryController.java
=============================*/

package com.crescendo.spring.admin.controller.category;




import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crescendo.spring.admin.model.dao.category.ICategoryDAO;
import com.crescendo.spring.admin.model.vo.category.CategoryVO;

@Controller
public class CategoryController
{
	
	private ICategoryDAO dao;
	
	// setter주입
	@Autowired
	public void setDao(ICategoryDAO dao)
	{
		this.dao = dao;
	}
	
	//포워딩 
	private void forward(HttpServletRequest request, HttpServletResponse response, String path) throws ServletException, IOException 
	{ 
		//포워딩 
		RequestDispatcher rd = request.getRequestDispatcher(path); 
		rd.forward(request, response); 
	}

	
	// 카테고리 리스트 출력
	@RequestMapping(value="/categorylist.action", method = RequestMethod.GET)
	public String cateList(Model model, HttpSession session)
	{
		try
		{
			CategoryVO vo = new CategoryVO();

			dao.cateList();
			
			model.addAttribute("data", dao.cateList());
			
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return "/admin/CategoryView";
	}
	
	
	// 카테고리 업데이트
	@RequestMapping(value="/categoryupdate.action", method = RequestMethod.POST)
	public String cateUpdate(CategoryVO m)
	{
		
		try
		{
			dao.cateUpdate(m);
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return "redirect:categorylist.action";
	}
	
	// 카테고리 수정폼에 데이터 보내기
	@RequestMapping(value="/categoryupdateform.action", method = RequestMethod.GET)
	public String updateCateForm(int caNum, HttpServletRequest request)
	{
		try
		{
			request.setAttribute("data", dao.updateCateForm(caNum));
			
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return "/admin/CategoryUpdateForm";
	}
	
	
	
}
