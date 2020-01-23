/*================================
 	   NoticeController.java
 =================================*/
package com.crescendo.spring.admin.controller.notice;




import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.crescendo.spring.admin.model.dao.notice.INoticeDAO;
import com.crescendo.spring.admin.model.vo.notice.NoticeVO;

@Controller
public class NoticeController
{
	
	private INoticeDAO dao;
	
	@Autowired
	public NoticeController(INoticeDAO dao)
	{
		this.dao=dao;
	}
	
	// 관리자 화면(공지사항 리스트 출력)
	@RequestMapping(value="/noticelist.action", method = RequestMethod.GET)
	public String noticeList(Model model)
	{
		try
		{
			
			model.addAttribute("data", dao.noticeList());
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return "/admin/NoticeListView";
	}
	
	//관리자 화면(공지사항 삭제)
	@RequestMapping(value="/noticedelete.action", method = RequestMethod.GET)
	public String noticeDelete(int noNum)
	{
		
		try
		{	

			dao.deleteNotice(noNum);
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return "redirect:noticelist.action";
	}
	
	// 공지사항 리스트 > 공지사항 입력 폼 
	@RequestMapping(value="/noticeinsertform.action", method = RequestMethod.GET)
	public String noticeInsertForm()
	{
		return "/admin/NoticeInsertForm";
	}
	
		
	@RequestMapping(value ="/noticeinsert.action", method = RequestMethod.POST)
	public String insertNotice(NoticeVO m)
	{
		try
		{	
			dao.insertNotice(m);
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return "redirect:noticelist.action";
	}
	
	// 공지사항 제목 클릭 > 확인창
	@RequestMapping(value="/noticeconfirmform.action", method = RequestMethod.GET)
	public String noticeConfirm(int noNum, HttpServletRequest request)
	{	
		
		try
		{
			
			request.setAttribute("data",dao.noticeConfirm(noNum));
	
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return "/admin/NoticeConfirm";
	}
	
	// 공지사항 수정 > 수정 폼 
	@RequestMapping(value="/noticeupdateform.action", method = RequestMethod.GET)
	public String updateNoticeConfirm(int noNum, HttpServletRequest request)
	{
		try
		{
			request.setAttribute("data",dao.updateNoticeConfirm(noNum));
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return "/admin/NoticeUpdateForm";
	}
	
	
	@RequestMapping(value="/noticeupdate.action", method = RequestMethod.POST)
	public String updateNotice(NoticeVO m)
	{
		try
		{
			
			dao.updateNotice(m);
						
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return "redirect:noticelist.action";
	}
	
	
	

	
	
	 
	 
}
