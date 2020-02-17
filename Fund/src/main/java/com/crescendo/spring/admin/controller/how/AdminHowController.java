package com.crescendo.spring.admin.controller.how;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crescendo.spring.admin.model.dao.how.IHowDAO;
import com.crescendo.spring.admin.model.vo.how.AdminHowVO;

@Controller
public class AdminHowController
{  
   
   private IHowDAO dao;
   
   @Autowired
   public void setIHowDAO(IHowDAO dao)
   {
	   this.dao = dao;
   }
	   
   // 이용방법 관리자 페이지에서 출력해주는 매핑
	@RequestMapping(value = "/howlist.action", method = RequestMethod.GET)
	public String howList(Model model)
	{
		try
		{
			model.addAttribute("lists", dao.howList());
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return "/admin/HowUseView";
	}
	
	// 관리자가 이용방법 리스트 → 이용방법 수정 페이지로 이동
	@RequestMapping (value = "/howupdateform.action", method = RequestMethod.GET)
	public String howUpdateForm(int howNum, HttpServletRequest request)
	{
		try
		{
			request.setAttribute("lists", dao.howUpdateForm(howNum));
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return "/admin/HowUseForm";
	}
	
	// 이용방법 수정 페이지 → 이용방법 리스트 페이지로 이동
	@RequestMapping(value = "/howupdate.action", method = RequestMethod.POST)
	public String howUpdate(AdminHowVO m)
	{
		try
		{
			dao.howUpdate(m);
		}
		catch(Exception e)
		{	
			System.out.println(e.toString());
		}
		return "redirect:howlist.action";
	}
}
	
	
