package com.crescendo.spring.admin.controller.charge;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.crescendo.spring.admin.model.dao.charge.IChargeDAO;
import com.crescendo.spring.admin.model.vo.charge.ChargeVO;
import com.crescendo.spring.admin.model.vo.person.PersonVO;
import com.crescendo.spring.admin.model.vo.promise.AdminPromiseVO;

@Controller
public class ChargeController
{
	@Autowired
	private IChargeDAO dao;

	public void setDao(IChargeDAO dao) {
		this.dao = dao;
	}
	
	
	//약관정책 출력
	@RequestMapping(value="charge.action", method=RequestMethod.GET)
	private String chargeList(Model model)
	{
		try
		{
			model.addAttribute("charge",dao.chargeList());
			model.addAttribute("person", dao.personList());
			model.addAttribute("promise",dao.promiseList());
		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return "/admin/PolicyListView";
	}
	
	//수수료 정책 수정 폼 출력
	@RequestMapping(value="chargeupdateform.action", method=RequestMethod.GET)
	public String chargeUpdateForm(int chaNum, HttpServletRequest request)
	{
		try
		{
			request.setAttribute("charge", dao.chargeUpdateForm(chaNum));
		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return "/admin/PolicyChargeUpdateForm";
	}
	
	//개인정보 처리방침 수정폼 출력
	@RequestMapping(value="/personupdateform.action", method=RequestMethod.GET)
	public String  personUpdateForm(int pNum, HttpServletRequest request)
	{
	     try
		{
			request.setAttribute("per" , dao.personUpdateForm(pNum));
		}
	    catch (Exception e)
		{
			System.out.println(e.toString());
		}
	     return "/admin/PolicyPersonUpdateForm";
	}
	

	// 관리자 화면(이용약관 수정폼) 
    //폼을 어디로 보낼것인가...
	@RequestMapping(value="/promiseupdateform.action", method=RequestMethod.GET)
	public String promiseUpdateForm(int proNum, HttpServletRequest request)
	{
		
		
			try
			{
				request.setAttribute("data", dao.promiseUpdateForm(proNum));
			} 
			catch (Exception e)
			{
				System.out.println(e.toString());
			}
			return "/admin/PolicyListUpdateForm";
		
	}
	
	
	
	//수수료 정책 수정
	@RequestMapping(value="chargeupdate.action", method=RequestMethod.GET)
	public String chargeUpdate(ChargeVO c)
	{
		try
		{
			dao.chargeUpdate(c);
		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return "redirect:charge.action";

	}
	
	//개인정보 처리방침 수정
	@RequestMapping(value="/personupdate.action", method=RequestMethod.GET)
	public String personUpdate(PersonVO person)
	{
		try
		{
			dao.personUpdate(person);
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return "redirect:charge.action";
	

		
	}
	
	//관리자 화면(이용약관 수정)
		@RequestMapping(value="/promiseupdate.action", method=RequestMethod.POST)
		public String promiseUpdate(AdminPromiseVO pro)
		{
			
			try
			{
				dao.promiseUpdate(pro);
			} 
			catch (Exception e)
			{
				System.out.println(e.toString());
			}
			return "redirect:charge.action" ;
			
		}

}
