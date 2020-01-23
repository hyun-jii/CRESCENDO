package com.crescendo.spring.user.controller.faq;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.crescendo.spring.admin.model.dao.IAdminDAO;
import com.crescendo.spring.admin.model.dao.Rletter.IRletterDAO;
import com.crescendo.spring.admin.model.dao.faq.IFaqDAO;
import com.crescendo.spring.admin.model.vo.Rletter.RletterVO;
import com.crescendo.spring.user.model.dao.letter.ILetterDAO;
import com.crescendo.spring.user.model.vo.UserVO;
import com.crescendo.spring.user.model.vo.letter.LetterVO;


@Controller
public class UserFaqController 
{
	@Autowired
	private SqlSession sqlSession;
	
	// session 주입
	public void setSqlSession(SqlSession sqlSession)
	{
		this.sqlSession = sqlSession;
	}
	
	
	// 사용자 페이지의 Faq를 출력해주는 구문
	@RequestMapping(value = "/helpmain.action", method = RequestMethod.GET)
	public String faqList(Model model, HttpServletRequest request)
	{
		try 
		{
			IFaqDAO dao = sqlSession.getMapper(IFaqDAO.class);
			model.addAttribute("lists", dao.faqList());
		} 
		catch (Exception e) 
		{
			System.out.println(e.toString());
		}
		return "HelpCenter";
	}
	
	// Faq 목록 중 하나를 선택했을 때 출력해주는 구문 
	@RequestMapping(value = "/helpcontent.action", method = RequestMethod.GET)
	public String faqConfirm(int hNum, HttpServletRequest request)
	{
		try 
		{ 
			IFaqDAO dao = sqlSession.getMapper(IFaqDAO.class);
			
			request.setAttribute("list", dao.faqConfirm(hNum));
			
		} 
		catch (Exception e) 
		{
			System.out.println(e.toString());
		}
		return "HelpCenterContent";
	} 
	
	
	// 문의하기 클릭 시 로그인 여부 알림창 ajax 처리
	@RequestMapping(value = "/clickhelp.action", method = RequestMethod.POST)
	@ResponseBody
	public String clickFund(String userEmail)
	{
	
		String result = null;
		
		if(userEmail != "")
		{
			System.out.println("로그인 x");
			result = "1";
		}
		else
		{
			System.out.println("로그인 o");
			result = "0";
		}
		
		return result;
	}
	
	 // 로그인 후 → 문의하기 쪽지 폼으로 이동
	  @RequestMapping(value = "/helpFaq.action", method = RequestMethod.GET) 
	  public String getReadData(String adminEmail, HttpServletRequest request) 
	  { 
		  try 
		  { 
			  IAdminDAO Adao = sqlSession.getMapper(IAdminDAO.class);
			  request.setAttribute("list", Adao.getReadData("adminEmail"));
		  } 
		  catch (Exception e) 
		  {
			  System.out.println(e.toString()); 
		  } 
		  return "FaqLetterForm"; 
	}

	// FAQ 에서 쪽지 insert 후, Faq 목록으로 이동
	@RequestMapping(value = "/helpsendemail.action", method = RequestMethod.POST)
	public String insertUserLetter(LetterVO p, HttpSession session)
	{
		// 관리자 받은쪽지함 vo 객체 인스턴스 생성
		RletterVO rletterVO = new RletterVO();
		// 로그인한 유저 정보 가져오기
		UserVO userVO = (UserVO)session.getAttribute("user"); 
		
		try 
		{
			ILetterDAO letterDAO = sqlSession.getMapper(ILetterDAO.class);
			IRletterDAO rletterDAO = sqlSession.getMapper(IRletterDAO.class);
			
			// ※사용자가 관리자에게 쪽지보내기
			
			// 유저번호를 보내는 이로 set
			p.setLeSender(userVO.getUserNum());
			// 사용자 보낸 쪽지함에 insert
			letterDAO.userSendAdmin(p);
			
			
			rletterVO.setUserNum(userVO.getUserNum());
			rletterVO.setLrTitle(p.getLeTitle());
			rletterVO.setLrContent(p.getLeContent());
			rletterVO.setLrId(p.getLeNum());
			
			// 관리자 받은 쪽지함에 insert
			rletterDAO.insertAdminRletter(rletterVO);
			
		} 
		catch (Exception e) 
		{
			System.out.println(e.toString());
		}
		return "redirect:helpmain.action";
	}
}