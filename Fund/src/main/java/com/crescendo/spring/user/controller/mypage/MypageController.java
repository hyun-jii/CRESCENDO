package com.crescendo.spring.user.controller.mypage;

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

import com.crescendo.spring.common.SessionInfo;
import com.crescendo.spring.user.model.dao.IUserDAO;
import com.crescendo.spring.user.model.dao.make.IMakeDAO;
import com.crescendo.spring.user.model.dao.out.IUserOutDAO;
import com.crescendo.spring.user.model.vo.UserVO;
import com.crescendo.spring.user.model.vo.out.UserOutVO;

@Controller
public class MypageController
{
			
		private SqlSession sqlSession;

		
		// setter 주입
		@Autowired
		public void setSqlSession(SqlSession sqlSession)
		{
			this.sqlSession = sqlSession;
		}


		// 마이페이지 홈(프로필 설정) 이동
		@RequestMapping(value = "/mypage.action", method = RequestMethod.GET)
		public String mypage(HttpSession session, Model model)
		{
			IUserDAO userDAO = sqlSession.getMapper(IUserDAO.class);
			UserVO userVO = (UserVO)session.getAttribute("user");
			
			try
			{
				// 마이페이지 프로필 홈(유저 정보 전달)
				model.addAttribute("userInfo", userDAO.getReadData(userVO.getUserEmail()));
				
				
			} catch (Exception e)
			{
				e.printStackTrace();
			}
			
			return "MypageMine";
		}
		

		// 회원 정보(프로필) 수정
		@RequestMapping(value = "/userupdate.action", method = RequestMethod.POST)
		public void userUpdate(UserVO userVo, HttpServletRequest request, HttpServletResponse response, HttpSession session)
		{
			String cp = request.getContextPath();
			IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
			
			try
			{
				dao.userUpdate(userVo);
			
				// 닉네임을 변경하였을 경우, 세션정보를 수정하기 위해 세션 인스턴스 다시 생성
				SessionInfo info = new SessionInfo();

				info.setUserEmail(userVo.getUserEmail());
				info.setUserName(userVo.getUserName());
				info.setUserNum(userVo.getUserNum());

				// 세션에 저장
				session.setAttribute("user", info);
				session.setAttribute("user", userVo);
					
				
				// 마이페이지 첫화면(프로필설정) 으로 이동
				response.sendRedirect(cp + "/mypage.action");
				
			} 
			catch (Exception e)
			{
				e.printStackTrace();
			}
				
		}
		
	
	
	// 창작자 페이지 이동
	@RequestMapping(value = "/makerpage.action", method = RequestMethod.GET)
	public String makerPage(Model model, HttpSession session, HttpServletRequest request, int userNum, String maName)
	{
		String state = request.getParameter("state");
		String sort = request.getParameter("sort");
		
		try 
		{
		    IMakeDAO dao = sqlSession.getMapper(IMakeDAO.class);
		    
		   request.setAttribute("userNum", userNum);
		   request.setAttribute("maName", maName);
		    
		    session = request.getSession();
		    UserVO vo = (UserVO) session.getAttribute("user");
		    
		    
		    System.out.println(userNum);
		    
		    
		    int makeTotal = dao.makerCount(userNum);
		    
		    //session.setAttribute("userNum", userNum);
		    model.addAttribute("userNum", userNum);
		    //드롭다운 종류별 수신위해
		    model.addAttribute("state", state);
			model.addAttribute("sort", sort);
			
			
		    //만든프로젝트 총 개수 출력
		    model.addAttribute("total", makeTotal);
		    
			//만든페이지 프로젝트 출력
			model.addAttribute("data", dao.makeList(userNum));
			
		} 
		catch (Exception e) 
		{
			System.out.println(e.toString());
		}

		return "MakerPage";
	}
	
	// 회원탈퇴 버튼 누를 시
	@RequestMapping(value="userout.action", method = RequestMethod.POST)
	@ResponseBody
	public String userOut(HttpSession session,String reason,HttpServletRequest request)
	{
		IUserOutDAO dao = sqlSession.getMapper(IUserOutDAO.class);
		UserOutVO vo = new UserOutVO();
		String result = "";
		try
		{
			// 유저번호 얻어오기
			UserVO userVo = (UserVO) session.getAttribute("user");
			//session.setAttribute("userNum", userVo.getUserNum());
				
			vo.setReason(reason);
			vo.setUserNum(userVo.getUserNum());
			
			// 해당 유저가 진행하고 있는 프로젝트 수 확인
			int count = dao.outCount(userVo.getUserNum());
			
			// 탈퇴 사유가 공백이 아니라면
			if(reason != "")
			{
				
				// 진행중인 프로젝트가 1개이상 존재한다면
				if (count > 0)
				{
					System.out.println("회원탈퇴 불가능");
					result = "1";
						
				}
				// 진행중인 프로젝트가 존재하지 않는다면
				else
				{
					System.out.println("회원탈퇴가능!");
					
					// 다 딜리트하고 탈퇴테이블에 인서트
					dao.userOutInsert(vo);
					session =  request.getSession();	

					session.removeAttribute("user");
					session.invalidate();
					
					
					result = "2";		
						
				}
					
			}
			else
			{
					System.out.println("통신실패");
					result = "0";
			}
				
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
			
			
		return result;
	}
	
	

}