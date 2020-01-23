package com.crescendo.spring.user.controller.projectpage.detail;



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

import com.crescendo.spring.user.model.dao.IUserDAO;
import com.crescendo.spring.user.model.dao.letter.ILetterDAO;
import com.crescendo.spring.user.model.dao.like.ILikeDAO;
import com.crescendo.spring.user.model.dao.log.ILogDAO;
import com.crescendo.spring.user.model.dao.projectpage.detail.IProjectDetailDAO;
import com.crescendo.spring.user.model.vo.UserVO;


import com.crescendo.spring.user.model.vo.letter.LetterVO;
import com.crescendo.spring.user.model.vo.like.LikeVO;


@Controller
public class ProjectDetailController
{
	private SqlSession sqlSession;

	@Autowired
	public void setSqlSession(SqlSession sqlSession)
	{
		this.sqlSession = sqlSession;
	}
	
	// 프로젝트별 세부 페이지 내용
	@RequestMapping(value = "/projectdetail.action", method = {RequestMethod.GET, RequestMethod.POST})
	public String projectDetail(int proNum, Integer userNum, Model model, HttpSession session)
	{
		IProjectDetailDAO projectDetailDAO = sqlSession.getMapper(IProjectDetailDAO.class);
		ILogDAO logDAO = sqlSession.getMapper(ILogDAO.class);
		IUserDAO userDAO = sqlSession.getMapper(IUserDAO.class);
		
		try
		{
			UserVO vo = (UserVO)session.getAttribute("user");
			
			
			
			// 프로젝트별 프로젝트 세부 내용
			model.addAttribute("projectDetail", projectDetailDAO.projectDetail(proNum));
			// 창작자 마지막 로그인 일자
			model.addAttribute("lastLogin", logDAO.lastLogin(userNum));
			// 창작자외 로그인한 유저 번호
			model.addAttribute("userNum", vo.getUserNum());
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return "DetailPrj";
	}
	

	// 승인대기 프로젝트별 세부 페이지 내용
		@RequestMapping(value = "/projectdetail2.action", method = {RequestMethod.GET, RequestMethod.POST})
		public String projectDetail2(int  appNum, Model model, HttpSession session) 
		{
			System.out.println("프로젝트 디테일 2 컨트롤러 들어옴 ");
			
			IProjectDetailDAO dao = sqlSession.getMapper(IProjectDetailDAO.class);
			
		/* ILogDAO logDAO = sqlSession.getMapper(ILogDAO.class); */
			
			
			try
			{
				//UserVO vo = (UserVO)session.getAttribute("user"); 
				// 프로젝트별 프로젝트 세부 내용
				model.addAttribute("projectDetail2",dao.projectDetail2(appNum));
				// 창작자 마지막 로그인 일자
			/* model.addAttribute("lastLogin", logDAO.lastLogin(userNum)); */

			} catch (Exception e)
			{
				System.out.println(e.toString());
			}
			
			return "DetailPrj2";
		}
	
	// 창작자에게 문의하기(ajax 송수신)
	@RequestMapping(value = "/makerlettersend.action", method = RequestMethod.POST)
	@ResponseBody
	public String makerLetterSend(int leReceiver, int leSender, String leTitle, String leContent) throws Exception
	{
		String result = null;
		ILetterDAO letterDAO = sqlSession.getMapper(ILetterDAO.class);
		LetterVO vo = new LetterVO();
		
		// 수신받은 값 vo 에 set
		vo.setLeReceiver(leReceiver);
		vo.setLeSender(leSender);
		vo.setLeTitle(leTitle);
		vo.setLeContent(leContent);
		
		// 데이터가 모두 정상적으로 수신된다면
		if(leReceiver != 0 && leSender != 0 && leTitle != "" && leContent != "")
		{
			// 창작자에게 쪽지 보내기
			letterDAO.insertLetter(vo);
			
			System.out.println("쪽지보내기성공");
			result = "1";
		}
		else
		{
			System.out.println("쪽지보내기실패");
			result = "0";
		}
		
		
		return result;
		
	}
	
	// 프로젝트 찜하기
	@RequestMapping(value = "/likeproject.action",method = RequestMethod.POST)
	@ResponseBody
	public String likeProject(String userEmail, int proNum, String temp, HttpSession session, HttpServletRequest request, HttpServletResponse response)
	{
		String result = null;
		ILikeDAO likeDAO = sqlSession.getMapper(ILikeDAO.class);
		LikeVO vo = new LikeVO();
		
		System.out.println(temp);
		// 세션에서 유저 정보가져오기
		UserVO user = (UserVO) session.getAttribute("user");
		
		System.out.println(temp);
		
		
		try
		{
			if(userEmail != "" && temp.equals("like"))
			{
				System.out.println("로그인 o");
				
				
				vo.setProNum(proNum);
				vo.setUserNum(user.getUserNum());
			
				// 찜하기 INSERT
				likeDAO.insertLike(vo);
				result = "1";
			}
			else if(userEmail != "" && temp.equals("unlike"))
			{
				// 찜하기 DELETE
				likeDAO.deleteLike(user.getUserNum(), proNum);
				result = "1";
			}
			else
			{
				System.out.println("로그인 x");
				result = "0";
			}
			
			session.setAttribute("temp", temp);
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		
		return result;
		
	}
	
	// 후원하기 클릭 시 로그인 여부 알림창 ajax 처리
	@RequestMapping(value = "/clickfund.action", method = RequestMethod.POST)
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
	

}

