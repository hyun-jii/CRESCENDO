package com.crescendo.spring.admin.controller.faq;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crescendo.spring.admin.model.dao.faq.IFaqDAO;
import com.crescendo.spring.admin.model.vo.faq.FaqVO;

/* 컨트롤러는 알맞은 메소드 들을 찾아주는 역할 */
@Controller
public class FaqController {

	@Autowired
	private IFaqDAO dao;
	
	// setter 주입
	public void setDao(IFaqDAO dao)
	{
		this.dao = dao;
	}

	//관리자 화면 (FAQ 리스트 출력)
	@RequestMapping(value="/faqlist.action")
	public String faqList(Model model)
	{
		
		try
		{
			model.addAttribute("data", dao.faqList());
			
		}catch(Exception e)
		{
			System.out.println(e.toString());
		}
		return "/admin/FaqListView";
		
	}
	
	//관리자화면(FAQ 삭제)
	@RequestMapping(value="/faqdelete.action",method=RequestMethod.GET)
	public String faqDelete(int hNum)
	{
		
		try
		{	

			dao.deleteFaq(hNum);
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return "redirect:faqlist.action";
	}
	

	// 공지사항 리스트 > 공지사항 입력 폼 
	@RequestMapping(value="/faqinsertform.action", method = RequestMethod.GET)
	public String noticeInsertForm()
	{

		return "/admin/FaqInsertForm";
	}
 	

	@RequestMapping(value ="/faqinsert.action", method = RequestMethod.POST)
	public String insertFaq(FaqVO m)
	{
		System.out.println("========faqinsert 컨트롤러 내용 ==========");
		System.out.println(m.gethTitle()+m.gethContent());
		
		try
		{	
			dao.insertFaq(m);
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return "redirect:faqlist.action";
	}
	
	
	
	// 공지사항 제목 클릭 > 확인창
		@RequestMapping(value="/faqconfirmform.action", method = RequestMethod.GET)
		public String faqConfirm(int hNum, HttpServletRequest request)
		{	
			
			try
			{
				
				request.setAttribute("data",dao.faqConfirm(hNum));
		
			} 
			catch (Exception e)
			{
				System.out.println(e.toString());
			}
			
			return "/admin/FaqConfirm";
		}
		
		// 공지사항 수정 > 수정 폼 
		@RequestMapping(value="/faqupdateform.action", method = RequestMethod.GET)
		public String updateFaqConfirm(int hNum, HttpServletRequest request)
		{
			
			
			try
			{
				
				request.setAttribute("data",dao.updateFaqConfirm(hNum));
			} 
			catch (Exception e)
			{
				System.out.println(e.toString());
			}
			
			return "/admin/FaqUpdateForm";
		}
		
	@RequestMapping(value = "/faqupdate.action")
	public String updateFaq(FaqVO m) {
		try {
			System.out.println("========faqupdate 컨트롤러 내용 ==========");
			System.out.println(m.gethTitle() + m.gethContent());
			dao.updateFaq(m);

		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return "redirect:faqlist.action";
	}

	@RequestMapping(value="/cancleFaq.action")
		public String cancleFaq()
		{
			
			return "redirect:faqlist.action";
		}
		
		
	
	
	
	
	
}
	
	