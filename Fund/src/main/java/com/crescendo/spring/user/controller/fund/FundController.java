package com.crescendo.spring.user.controller.fund;




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
import com.crescendo.spring.user.model.dao.fund.IFundDAO;

import com.crescendo.spring.user.model.dao.projectpage.detail.IProjectDetailDAO;
import com.crescendo.spring.user.model.vo.UserVO;
import com.crescendo.spring.user.model.vo.fund.FundVO;
import com.crescendo.spring.user.model.vo.projectpage.ProjectPageVO;


@Controller
public class FundController
{
	@Autowired
	private SqlSession sqlSession;
	
	// session 주입
	public void setSqlSession(SqlSession sqlSession) 
	{
		this.sqlSession = sqlSession;
	}
	
	
	// 프로젝트 상세페이지에서 후원하기를 클릭했을 경우
	@RequestMapping(value = "/fund.action", method = RequestMethod.GET)
	public String fund(HttpServletRequest requst, int proNum, HttpSession session)
	{
		IUserDAO userDAO = sqlSession.getMapper(IUserDAO.class);
		try 
		{
			UserVO vo = (UserVO)session.getAttribute("user");
			requst.setAttribute("proNum", proNum);
			
		} 
		catch (Exception e) 
		{
			System.out.println(e.toString());
		}
		return "FundAgree";
	}
	
	// 약관 동의 후, 프로젝트 후원시작하기를 클릭했을 경우
	@RequestMapping(value = "/fundstart.action", method = RequestMethod.GET)
	public String fundList(Model model, int proNum, HttpSession session, HttpServletRequest request)
	{
		try 
		{
			IProjectDetailDAO dao = sqlSession.getMapper(IProjectDetailDAO.class);
			
		
			// 해당 프로젝트별 리워드 리스트
			model.addAttribute("fund", dao.fundList(proNum));
			
			//model.addAttribute("title", dao.findPrjtitle(proNum));

			
			request.setAttribute("proNum", proNum);
			
			
			UserVO vo = (UserVO)session.getAttribute("user");
			
		} 
		catch (Exception e) 
		{
			System.out.println(e.toString());
		}
		return "RewardSelect";
	}
	
	// 리워드 선택한 후, 결제페이지 이동을 누르면 insert될 수 있도록 > 결제정보 입력창으로 이동
	
	
	
	// 주문 상세 페이지 클릭 > 배송지 입력 페이지로 이동
	@RequestMapping(value = "/fundcredit.action", method = RequestMethod.GET)
	public String rewardList(int reNum, int proNum, HttpServletRequest request, Model model, HttpSession session)
	{
		try 
		{
			IProjectDetailDAO dao = sqlSession.getMapper(IProjectDetailDAO.class);
			
			model.addAttribute("rewardList", dao.rewardList(proNum, reNum));
			
			//int fCount = Integer.parseInt(request.getParameter("fCount"));
			//request.setAttribute("fCount", fCount);
			
			request.setAttribute("proNum", proNum);
			request.setAttribute("reNum", reNum);
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
			
		return "CreditReward";
	}
	
	// 선택수량에 따른 결제 금액 ajax
	@RequestMapping(value = "/checkmoney.action", method = RequestMethod.POST)
	@ResponseBody
	public String checkMoney(int fCount, int total_money)
	{
		String result = null;
		
		if(fCount != 0 && total_money != 0)
		{
			// 선택한 수량 * 해당 리워드 금액
			result = Integer.toString(fCount * total_money);
		}
		else
		{
			result = "0";
		}
		
		
		return result;
	}
	
	
	
	// 배송지 입력 페이지 > 결제하기 클릭 시, 배송정보 insert
	@RequestMapping(value = "/orderinsert.action", method = RequestMethod.POST)
	@ResponseBody
	public String deleveryInsert(String fName, String fTel, String fAddr, int fZipcode, String fInquire, int reNum, int fCount
									, HttpSession session, HttpServletRequest request, HttpServletResponse response)
	{
		String result = null;
		IFundDAO fundDAO = sqlSession.getMapper(IFundDAO.class);
		FundVO fundVO  = new FundVO();
		// 로그인한 유저 정보 가져오기
		UserVO userVO = (UserVO)session.getAttribute("user");
	
		try 
		{
			
			// 값 수신이 되었다면
			if(fName != "" && fCount != 0)
			{
				// 수신받은 데이터 FundVO에 set
				fundVO.setUserNum(userVO.getUserNum());
				fundVO.setfName(fName);
				fundVO.setfTel(fTel);
				fundVO.setfAddr(fAddr);
				fundVO.setfZipcode(fZipcode);
				fundVO.setfInquire(fInquire);
				fundVO.setReNum(reNum);
				fundVO.setfCount(fCount);
				
				// 후원 테이블에  insert
				fundDAO.deleveryInsert(fundVO);
				result = "1";
			}
			// 값 수신이 안되었다면
			else
			{
				result = "0";
			}
			
			session.setAttribute("fNum", fundVO.getfNum());
			
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		return result;
	}
	
}
