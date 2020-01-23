package com.crescendo.spring.user.controller.like;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crescendo.spring.user.model.dao.like.ILikeDAO;
import com.crescendo.spring.user.model.vo.UserVO;

@Controller
public class LikeController
{
	

	@Autowired
	private SqlSession sqlSession;
	
	// session 주입
	public void setSqlSession(SqlSession sqlSession)
	{
		this.sqlSession = sqlSession;
	}


    //찜한프로젝트 출력
	@RequestMapping(value="like.action", method=RequestMethod.GET)
	public String likeList(Model model, HttpServletRequest request, HttpSession session)
	{
		try
		{
			ILikeDAO dao = sqlSession.getMapper(ILikeDAO.class);
			
			//유저넘을 위한 세션
			session = request.getSession();
			UserVO vo = (UserVO) session.getAttribute("user");
			
			int userNum = vo.getUserNum();
			int likecount  = dao.likeCount(userNum);
			
			System.out.println(userNum);
			
			model.addAttribute("data", dao.likeList(userNum));
			model.addAttribute("count", likecount);
		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return "MypageLike";
	}
	
	//찜한프로젝트 찜제거
	@RequestMapping(value="likedelete.action", method=RequestMethod.GET)
	public String deleteLike(int proNum, int userNum)
	{
		try
		{
			ILikeDAO dao = sqlSession.getMapper(ILikeDAO.class);
			dao.deleteLike(userNum, proNum);
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return "redirect:like.action";
	 }
}
	