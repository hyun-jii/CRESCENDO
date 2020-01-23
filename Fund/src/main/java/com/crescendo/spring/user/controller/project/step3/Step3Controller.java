
package com.crescendo.spring.user.controller.project.step3;



import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.crescendo.spring.user.model.dao.project.step3.IStep3DAO;
import com.crescendo.spring.user.model.vo.project.step3.Step3VO;

@Controller
public class Step3Controller
{
	@Autowired
	private SqlSession sqlSession;
	
	
	public void setSqlSession(SqlSession sqlSession)
	{
		this.sqlSession = sqlSession;
	}
	
	// 리워드 인서트
	@RequestMapping(value="/rewardinsert.action", method = RequestMethod.POST)
	@ResponseBody
	public String rewardInsert(String reName, String reContent, int prjNum, int reLimit, int reMoney,Model model)
	{
		String result = "";
		try
		{
			// 리워드 insert부분
			IStep3DAO dao = sqlSession.getMapper(IStep3DAO.class);
			Step3VO vo = new Step3VO();
			
			
			vo.setReName(reName);
			vo.setReContent(reContent);
			vo.setReMoney(reMoney); 
			vo.setReLimit(reLimit);
			vo.setPrjNum(prjNum);
		
		
			if (reName != "")
			{
				dao.rewardInsert(vo);
				System.out.println("리워드입력성공");
				result="1";
			}
			else
			{
				System.out.println("리워드입력실패");
				result="0";
			} 
			
			model.addAttribute("list", dao.rewardList(prjNum));
		

		} 
		catch (NumberFormatException e1)
		{
			e1.printStackTrace();
		}
		catch (Exception e2) 
		{
			e2.printStackTrace();
		}
		return result;
	}
	

	// 리워드 삭제할 시 
	@RequestMapping(value="rewarddelete.action", method = RequestMethod.GET)
	public String rewardDelete(int reNum, HttpSession session)
	{
		
		IStep3DAO dao = sqlSession.getMapper(IStep3DAO.class);
		int prjNum = 0;
		try
		{
			
			dao.rewardDelete(reNum);
			prjNum = (Integer) session.getAttribute("prjNum");
			
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return "redirect:step3list.action?prjNum=" + prjNum;
	}
	
	// 리워드 구성 중 취소버튼 누를 경우
	@RequestMapping(value="/canclereward.action", method = RequestMethod.GET)
	public String cancleReward()
	{
		return "redirect:main.action";
	}
	
	
	
	


	
	
}