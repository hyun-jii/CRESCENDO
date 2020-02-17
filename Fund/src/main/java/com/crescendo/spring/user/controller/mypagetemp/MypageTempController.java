package com.crescendo.spring.user.controller.mypagetemp;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crescendo.spring.user.model.dao.mypagetemp.IMypageTempDAO;
import com.crescendo.spring.user.model.vo.UserVO;
import com.crescendo.spring.user.model.vo.project.step3.Step3VO;

@Controller
public class MypageTempController
{
	private SqlSession sqlSession;

	@Autowired
	public void setSqlSession(SqlSession sqlSession)
	{
		this.sqlSession = sqlSession;
	}
	
	// 임시저장 목록 리스트 출력 및 / 갯수 확인
	@RequestMapping(value = "/mypagetemp.action", method = RequestMethod.GET)
	public String mypageTempList(HttpSession session, HttpServletRequest request, Model model)
	{
		IMypageTempDAO tempDAO = sqlSession.getMapper(IMypageTempDAO.class);
		

		UserVO vo = (UserVO) session.getAttribute("user");
		session.setAttribute("userNum", vo.getUserNum());
		int count = 0;
	
		try
		{
			
			model.addAttribute("list", tempDAO.mypageTempList(vo.getUserNum()));
			
			count = tempDAO.mypageTempCount(vo.getUserNum());
			
			model.addAttribute("count",count);
			
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return "TempStorage";
	}
	
	// 클릭했을 때 step별로 리다이렉트
	@RequestMapping(value = "/searchstep.action", method = RequestMethod.GET)
	public String searchStep(HttpSession session, Step3VO vo, HttpServletRequest request)
	{
		IMypageTempDAO dao = sqlSession.getMapper(IMypageTempDAO.class);

		int reNum = 0;
		int prjNum = 0;

		try
		{
			prjNum = Integer.parseInt(request.getParameter("prjNum"));
			reNum = dao.searchStep(prjNum);
			/* System.out.println(reNum); */

			if (reNum == 0)
			{
				return "redirect:step3list.action?prjNum=" + prjNum;
			}

		} catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return "redirect:step4.action?prjNum=" + prjNum;
	}
		
	
	// 임시프로젝트 삭제
	@RequestMapping(value="/mypagetempdelete.action", method = RequestMethod.GET)
	public String mypageTempDelete(HttpServletRequest request)
	{
		IMypageTempDAO dao = sqlSession.getMapper(IMypageTempDAO.class);
		
		int prjNum = 0;
		
		try
		{
			prjNum = Integer.parseInt(request.getParameter("prjNum"));
			dao.mypageTempDelete(prjNum);
			
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return "redirect:mypagetemp.action";
	}
}