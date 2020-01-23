package com.crescendo.spring.user.controller.make;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.crescendo.spring.admin.model.dao.Rletter.IRletterDAO;
import com.crescendo.spring.admin.model.vo.Rletter.RletterVO;
import com.crescendo.spring.user.model.dao.IUserDAO;
import com.crescendo.spring.user.model.dao.letter.ILetterDAO;
import com.crescendo.spring.user.model.dao.make.IMakeDAO;
import com.crescendo.spring.user.model.vo.UserVO;
import com.crescendo.spring.user.model.vo.letter.LetterVO;
import com.crescendo.spring.user.model.vo.make.MakeVO;



@Controller
public class MakeController
{
	
	@Autowired
	private SqlSession sqlSession;
	
	// session 주입
	public void setSqlSession(SqlSession sqlSession)
	{
		this.sqlSession = sqlSession;
	}
	
	//사용자 마이페이지 만든프로젝트 출력
	@RequestMapping(value="make.action", method=RequestMethod.GET)
	public String makeList(Model model, HttpSession session, HttpServletRequest request)
	{
		
		//드롭다운 종류별로 수신
		String state = request.getParameter("state");
		String sort = request.getParameter("sort");
		
		try
		{
			
		    IMakeDAO dao = sqlSession.getMapper(IMakeDAO.class);
		    
		    session = request.getSession();
		    UserVO vo = (UserVO) session.getAttribute("user");
		    
		    int userNum = vo.getUserNum();
		    
		    System.out.println(userNum);
		    
		    //만든프로젝트 수 
		    int makeTotal = dao.makeCount(userNum);
		    //승인프로젝트 수 
		    int allowCount = dao.allowCount(userNum);
		    //거절프로젝트 수 
		    int refuseCount = dao.refuseCount(userNum);
		    //승인대기프로젝트 수 
		    int waitCount  = dao.waitCount(userNum);
		    
		   //유저넘 받아오기
		    model.addAttribute("userNum", userNum);
		    //드롭다운 종류별 수신위해
		    model.addAttribute("state", state);
			model.addAttribute("sort", sort);
			
			
		    //만든프로젝트 총 개수 출력
		    model.addAttribute("total", makeTotal);
		    //승인프로젝트 총 개수 출력
		    model.addAttribute("allowtotal", allowCount);
		    //거절프로젝트 총 개수 출력
		    model.addAttribute("refusetotal", refuseCount);
		    //승인대기프로젝트 총 개수 출력
		    model.addAttribute("waittotal", waitCount);
		    
			//만든페이지 프로젝트 출력
			model.addAttribute("data", dao.makeList(userNum));
			//만든페이지 승인한 프로젝트 출력
			model.addAttribute("allowdata",dao.allowList(userNum));
			//만든페이지 거절한 프로젝트 출력
			model.addAttribute("refusedata",dao.refuseList(userNum));
			//만든프로젝트 승인대기  프로젝트 출력
			model.addAttribute("waitdata", dao.waitList(userNum));
			
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return "MypageMake";
	}
	
		//쪽지보내기(사용자 → 관리자)
		@RequestMapping(value ="/minsertletter2.action", method = RequestMethod.POST)
		@ResponseBody
		public String insertAdminRletter2(String leTitle, String leContent, Model model, HttpSession session, HttpServletRequest request)
		{
			String result = null;
			ILetterDAO letterDAO = sqlSession.getMapper(ILetterDAO.class);
			IRletterDAO rletterDAO = sqlSession.getMapper(IRletterDAO.class);
			LetterVO letterVO = new LetterVO();
			RletterVO rletterVO = new RletterVO();
			UserVO userVO = (UserVO) session.getAttribute("user");
			
			System.out.println("안나올꺼야?");
			
					
			try
			{
				if(leTitle != "" &&  leContent != "")
				{
					
					// 사용자 보낸 쪽지함에 insert
					letterVO.setLeSender(userVO.getUserNum());
					letterVO.setLeTitle(leTitle);
					letterVO.setLeContent(leContent);
					
					letterDAO.userSendAdmin(letterVO);
					
					System.out.println("쪾지번호" + letterVO.getLeNum());
					System.out.println("왜안나와1");
					
					// 관리자 받은 쪽지함에 insert
					rletterVO.setUserNum(userVO.getUserNum());
					rletterVO.setLrTitle(leTitle);
					rletterVO.setLrContent(leContent);
					rletterVO.setLrId(letterVO.getLeNum());
									
					rletterDAO.insertAdminRletter(rletterVO);
					
					result = "1";
				}
				else
				{
					result = "0";
				}
				
				
			} catch (Exception e)
			{
				e.printStackTrace();
			}
			System.out.println("안나올수가없는데?");
			
			return result;
		}
		
		//쪽지보내기(창작자(사용자) → 후원자(사용자))
		@RequestMapping(value ="/tosupporterletter.action", method = RequestMethod.POST)
		@ResponseBody
		public String insertSupporterLetter(String leTitle, String leContent, String userEmail, Model model, HttpSession session, HttpServletRequest request) 
		{
			String result = null;
			ILetterDAO letterDAO = sqlSession.getMapper(ILetterDAO.class);
			IUserDAO userDAO = sqlSession.getMapper(IUserDAO.class);
			
			LetterVO letterVO = new LetterVO();
			
			// 창작자 정보 가져오기
			UserVO userVO = (UserVO) session.getAttribute("user");
			
			System.out.println("안나올꺼야?");
			System.out.println(userEmail);
			
					
			try
			{
				if(leTitle != "" &&  leContent != "" && userEmail != "")
				{
					// 후원자 정보 가져오기
					UserVO userVO2 = userDAO.getReadData(userEmail);
					
					//창작자 번호
					letterVO.setLeSender(userVO.getUserNum());
				
					//후원자 번호
					letterVO.setLeReceiver(userVO2.getUserNum());
				

					letterVO.setLeTitle(leTitle);
					letterVO.setLeContent(leContent);
					
					// 사용자 쪽지 INSERT
					letterDAO.insertLetter(letterVO);
					
					
					result = "1";
				}
				else
				{
					result = "0";
				}
				
				
			} catch (Exception e)
			{
				e.printStackTrace();
			}
			System.out.println("안나올수가없는데?");
			System.out.println(userEmail);
			
			return result;
		}
	
		//사용자 마이페이지(후원자 리스트 출력)
		@RequestMapping(value="supporterlist.action", method=RequestMethod.GET)
		public String supporterList(String prjTitle, int proNum, Model model, HttpServletRequest request, HttpSession session)
		{
			System.out.println("supporterlist 접근 ");
			IMakeDAO dao = sqlSession.getMapper(IMakeDAO.class);
			try
			{
				 session = request.getSession();
				 UserVO vo = (UserVO) session.getAttribute("user");
			
				    
				int userNum = vo.getUserNum();

				System.out.println(" 유저넘버 : "  + vo.getUserNum());
				
				model.addAttribute("data", dao.supporterList(userNum, proNum,prjTitle));
				model.addAttribute("datasize", dao.supporterList(userNum, proNum,prjTitle).size());
				model.addAttribute("data", dao.supporterList(userNum, proNum,prjTitle));
				request.setAttribute("userNum", userNum);
				request.setAttribute("proNum", proNum);
				request.setAttribute("prjTitle", prjTitle);
				
				
				
				
			}
			catch (Exception e)
			{
				System.out.println(e.toString());
			}
			return "MypageFundList";
		}
		

		//만든프로젝트 배송상태 업데이트
		@RequestMapping(value="postfinish.action", method=RequestMethod.GET)
		public String postStateUpdate(int proNum)
		{
			try
			{
				IMakeDAO dao = sqlSession.getMapper(IMakeDAO.class);
				dao.postStateUpdate(proNum);
				System.out.println("배송완료");
			}
			catch (Exception e)
			{
				System.out.println(e.toString());
			}
			
			return "redirect:make.action";
		}
		
		

}
