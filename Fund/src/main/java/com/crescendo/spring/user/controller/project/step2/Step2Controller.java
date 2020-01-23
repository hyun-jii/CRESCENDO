
package com.crescendo.spring.user.controller.project.step2;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.crescendo.spring.admin.model.dao.category.ICategoryDAO;
import com.crescendo.spring.user.model.dao.project.step2.IStep2DAO;
import com.crescendo.spring.user.model.dao.project.step3.IStep3DAO;


@Controller
public class Step2Controller {
	private SqlSession sqlsession;

	// setter 주입
	@Autowired
	public void setSqlsession(SqlSession sqlsession) {
		this.sqlsession = sqlsession;
	}

	// 약관동의 > step1 페이지 전환
	@RequestMapping(value = "/step1insert.action", method = RequestMethod.GET)
	public String step1(Model model, HttpServletRequest request, HttpSession session)
	{
		try 
		{
			ICategoryDAO dao = sqlsession.getMapper(ICategoryDAO.class);
			IStep2DAO step2DAO = sqlsession.getMapper(IStep2DAO.class);

			model.addAttribute("list", dao.cateList());
			System.out.println("아무말");
			
			
			
			int prjNum = (int) session.getAttribute("prjNum");
			
			System.out.println("안찍힐꺼야?");
			
			model.addAttribute("a", step2DAO.backStep2(prjNum));
			
			System.out.println("전송 후 prjNum" + prjNum);
		
			

		} 
		catch (Exception e) 
		{
			System.out.println(e.toString());
		}

		return "/step2";
	}
	/*
	 * @RequestMapping(value = "/extra.action", method = RequestMethod.POST) public
	 * String extraProject(Step2VO vo, HttpSession session, HttpServletRequest
	 * request,HttpServletResponse response) { IStep2DAO dao =
	 * sqlsession.getMapper(IStep2DAO.class); IStep3DAO dao3 =
	 * sqlsession.getMapper(IStep3DAO.class);
	 * 
	 * int prjNum=0; try {
	 * 
	 * // 프로젝트 테이블 인서트 메소드 호출 dao.extraProject(vo);
	 * 
	 * prjNum = vo.getPrjNum();
	 * 
	 * // 다음 페이지에 prjNum넘겨주기 session.setAttribute("prjNum", prjNum);
	 * 
	 * 
	 * 
	 * } catch (Exception e) { e.printStackTrace(); }
	 * 
	 * return "redirect:step3list.action?prjNum=" + prjNum;
	 * 
	 * }
	 * upload.action으로 이사갔습니다 ~~
	 */

	// step3리스트 뿌려주는곳
	@RequestMapping(value = "/step3list.action", method = RequestMethod.GET)
	public String step3List(int prjNum, Model model, HttpServletRequest request, HttpServletResponse response, HttpSession session) 
	{
		IStep3DAO dao = sqlsession.getMapper(IStep3DAO.class);
		int count = 0;
		try {
			System.out.println("----step3list.action진입-----");
			System.out.println("프로젝트 번호 : " + prjNum);
			
			//rd.addFlashAttribute("dprjNum", prjNum);
			
			prjNum = (int)session.getAttribute("prjNum");
			
			
			session.setAttribute("prjNum", prjNum);

			System.out.println("step3list의 prjNum : " + prjNum);
			
			model.addAttribute("list", dao.rewardList(prjNum));
			count = dao.rewardCount(prjNum);

			model.addAttribute("count", count);
			
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return "step3";

	}
	
	// step3 뒤로가기 눌렀을 경우 
	@RequestMapping(value = "/backstep2.action", method = RequestMethod.GET)
	public void backStep2(HttpServletRequest request, Model model, RedirectAttributes rd,HttpServletResponse response, HttpSession session)
	{
		String cp = request.getContextPath();
		IStep2DAO dao2 = sqlsession.getMapper(IStep2DAO.class);
		
		System.out.println(request.getParameter("prjNum"));
		
		int prjNum = 0;


		try	
		{
			prjNum = Integer.parseInt(request.getParameter("prjNum"));
			
			
			
			session.setAttribute("prjNum", prjNum);
			//rd.addFlashAttribute("prjNum", prjNum);
			
			//model.addAttribute("prjNum", prjNum);

			//model.addAttribute("a", dao2.backStep2(prjNum));
			
			

			System.out.println("애증의 피알제이넘" + prjNum);
			response.sendRedirect(cp+"/step1insert.action");

		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
	}
}

