package com.crescendo.spring.user.controller.notice;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crescendo.spring.admin.model.dao.notice.INoticeDAO;

@Controller
public class UserNoticeController 
{
	private SqlSession sqlsession; 
	
	// setter 주입
	@Autowired
	public void setSqlSession(SqlSession sqlsession)
	{
		this.sqlsession = sqlsession;
	}
	
	// 사용자 페이지의 공지사항 목록을 출력해주는 구문
	@RequestMapping(value = "/noticemain.action", method = RequestMethod.GET)
	public String noticeList(Model model)
	{
		try 
		{
			INoticeDAO dao = sqlsession.getMapper(INoticeDAO.class);

			model.addAttribute("list", dao.noticeList());
		} catch (Exception e) 
		{
			System.out.println(e.toString());
		}

		return "/Board";
	}
	
	// 공지사항 목록 중 하나를 선택했을 때 출력해주는 구문
	@RequestMapping(value = "/noticecontent.action", method = RequestMethod.GET)
	public String contentList(int noNum, HttpServletRequest request)
	{
		try 
		{
			INoticeDAO dao = sqlsession.getMapper(INoticeDAO.class);

			request.setAttribute("list", dao.contentList(noNum));
		} 
		catch (Exception e) 
		{
			System.out.println(e.toString());
		}
		return "/BoardContent";
	} 
}
