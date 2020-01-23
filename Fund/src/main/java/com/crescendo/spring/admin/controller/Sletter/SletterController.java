package com.crescendo.spring.admin.controller.Sletter;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crescendo.spring.admin.model.dao.Rletter.IRletterDAO;
import com.crescendo.spring.admin.model.dao.Sletter.ISletterDAO;
import com.crescendo.spring.admin.model.vo.Rletter.RletterVO;
import com.crescendo.spring.admin.model.vo.Sletter.SletterVO;


@Controller
public class SletterController
{
	@Autowired
	private ISletterDAO dao;

	public void setDao(ISletterDAO dao)
	{
		this.dao = dao;
	}
	
	//보낸쪽지 출력
	@RequestMapping(value="adminsletter.action", method=RequestMethod.GET)
	public String SletterList(Model model)
	{
		 try
		{
			model.addAttribute("adminletter", dao.SletterList());
		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		 
		return "/admin/SmessageListView";
	}
	
	//쪽지제목 클릭시 쪽지폼출력
	@RequestMapping(value="sletterconfirmform.action", method=RequestMethod.GET)
	public String SletterConfirm(int lsNum, HttpServletRequest request)
	{
		try
		{
			request.setAttribute("data", dao.SletterConfirm(lsNum));
		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return "/admin/SletterConfirm";
	}
		
	//관리자 보낸쪽지 삭제날짜 update
	@RequestMapping(value="sletterupdatedeletedate.action", method=RequestMethod.GET)
	public String SDeleteDateUpdate(SletterVO r)
	{
		try
		{
			dao.SDeleteDateUpdate(r);
		
		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return "redirect:adminsletter.action";
	}
	
	//관리자 보낸쪽지 삭제
	@RequestMapping(value="admindeletesletter.action", method=RequestMethod.GET)
	public String AdmindeleteSletter(int lsNum)
	{
		try
		{
			dao.AdmindeleteSletter(lsNum);
		
		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return "redirect:adminsletter.action";
	}
		


}