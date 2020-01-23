package com.crescendo.spring.user.controller.support;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crescendo.spring.user.model.dao.support.ISupportDAO;
import com.crescendo.spring.user.model.vo.UserVO;



@Controller
public class SupportController
{
	
	@Autowired
	private SqlSession sqlSession;
	
	// session 주입
	public void setSqlSession(SqlSession sqlSession)
	{
		this.sqlSession = sqlSession;
	}
	
	
	
	//후원프로젝트 출력
	@RequestMapping(value="support.action", method=RequestMethod.GET)
	public String supportList(Model model, HttpServletRequest request, HttpSession session)
	{
		try
		{
			//유저네임 얻어오기
		    session = request.getSession();
		    UserVO vo = (UserVO) session.getAttribute("user");
		    
		    String userName = vo.getUserName();
		    
		    ISupportDAO dao = sqlSession.getMapper(ISupportDAO.class);
		    
		    //후원한 프로젝트 갯수
			int supportCount = dao.supportCount(userName);
			//후원한 프로젝트 출력
			model.addAttribute("data", dao.supportList(userName));
			//후원한 프로젝트 갯수출력
			model.addAttribute("count", supportCount);
		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return "MypageSupport";
	}
	
	
			
	//후원프로젝트 결제 취소하기
	@RequestMapping(value="canclepay.action",  method = RequestMethod.GET)
	public String canclePay(@Param("fCount")int fCount,@Param("reNum")int reNum,@Param("userName")String userName)
	{
		System.out.println("컨트롤러 들어옴");
		System.out.println("userName값 : " + userName);
		//System.out.println("poNum값 : " + poNum);
		System.out.println("fCount값 : " + fCount);
		System.out.println("reNum값 : " + reNum);
		
		try
		{
			
			ISupportDAO dao = sqlSession.getMapper(ISupportDAO.class);
			
			System.out.println("DAO 실행됐니 ??");
			//결제취소하기
			/* dao.canclePay(poNum); */
			//리워드 증가
			int result2 = dao.increaseCount(fCount, reNum);
			System.out.println("결과 내용 : "+  result2);
			
			
			/*
			 * if(fCount !=0 && reNum !=0) { dao.increaseCount(fCount, reNum); } else {
			 * System.out.println("왜 !!!"); }
			 */
		

		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return "main.action";
	}
	
}