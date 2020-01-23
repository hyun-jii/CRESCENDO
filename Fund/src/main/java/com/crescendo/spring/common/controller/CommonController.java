package com.crescendo.spring.common.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crescendo.spring.admin.model.dao.IAdminDAO;
import com.crescendo.spring.admin.model.vo.AdminVO;
import com.crescendo.spring.common.SessionInfo;
import com.crescendo.spring.user.model.dao.IUserDAO;
import com.crescendo.spring.user.model.dao.log.ILogDAO;
import com.crescendo.spring.user.model.vo.UserVO;

@Controller
public class CommonController
{

	@Autowired
	private SqlSession sqlSession;

	// setter 주입
	public void setSqlSession(SqlSession sqlSession)
	{
		this.sqlSession = sqlSession;
	}

	// 포워딩
	private void forward(HttpServletRequest request, HttpServletResponse response, String path)
			throws ServletException, IOException
	{
		// 포워딩
		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request, response);
	}


	// 회원 로그인 폼 이동
	/*
	 * @RequestMapping(value = "/loginform.action", method = RequestMethod.GET)
	 * public String loginForm(HttpSession session, HttpServletRequest request,
	 * HttpServletResponse response) {
	 * 
	 * String referer = request.getHeader("referer");
	 * session.setAttribute("referer", referer);
	 * 
	 * return "Login"; }
	 */

	// 로그인
	@RequestMapping(value = "/login.action", method = RequestMethod.POST)
	public void login(HttpSession session, HttpServletRequest request, HttpServletResponse response)
	{

		String cp = request.getContextPath();

		// Login.jsp 에서 이메일, 비밀번호 수신
		String userEmail = request.getParameter("userEmail");
		String userPwd = request.getParameter("userPwd");

		// 회원, 관리자 여부 확인
		String adminCheck = request.getParameter("admin");

		UserVO user = null;
		AdminVO admin = null;

		try
		{
			IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
			IAdminDAO adminDAO = sqlSession.getMapper(IAdminDAO.class);
			ILogDAO logDAO = sqlSession.getMapper(ILogDAO.class);

			// 관리자로 로그인 하는 경우
			if (adminCheck != null)
			{
				admin = adminDAO.getReadData(userEmail);

				// 이메일 또는 비밀번호가 일치하지 않는 경우
				if (admin == null || !admin.getAdminPw().equals(userPwd))
				{
					request.setAttribute("msg", "아이디 또는 패스워드가 일치하지 않습니다.");

					// 로그인 폼으로 돌아가기
					response.sendRedirect(cp + "/loginform.action");
					return;
				}

				// 관리자 로그인 성공
				session = request.getSession(true);

				SessionInfo info = new SessionInfo();

				info.setUserEmail(userEmail);

				request.setAttribute("admin", info);

				// 로그인 후 관리자페이지로 이동
				String path = "/adminhome.action";
				forward(request, response, path);
				return;

			} // end if

			// 사용자로 로그인 하는 경우
			user = dao.getReadData(userEmail);
			
			// 이메일 또는 비밀번호가 일치하지 않는 경우
			if (user == null || !user.getUserPw().equals(userPwd))
			{
				request.setAttribute("msg", "아이디 또는 패스워드가 일치하지 않습니다.");

				// 로그인 폼으로 돌아가기
				response.sendRedirect(cp + "/loginform.action");
				return;
			}

			// 이메일과 비밀번호가 일치한다면
			if (user.getUserEmail().equals(userEmail) && user.getUserPw().equals(userPwd))
			{
				session = request.getSession(true);

				SessionInfo info = new SessionInfo();

				info.setUserEmail(userEmail);
				info.setUserName(user.getUserName());
				info.setUserNum(user.getUserNum());
				info.setUserProfile(user.getUserProfile());
				
				// 세션에 저장
				session.setAttribute("user", info);
				session.setAttribute("user", user);
				
				//-----------------------------------------로그 기록 추가------------------------------
				// 로그인 시 로그기록 insert
				logDAO.insertLog(user.getUserNum());
				//--------------------------------------------------------------------------------------

				// 로그인 후 
				String referer = (String)session.getAttribute("referer");
				response.sendRedirect(referer);
				return;

			}

		} catch (Exception e)
		{
			e.printStackTrace();
		}

	} // end login(HttpSession session, HttpServletRequest request,
		// HttpServletResponse response)

}