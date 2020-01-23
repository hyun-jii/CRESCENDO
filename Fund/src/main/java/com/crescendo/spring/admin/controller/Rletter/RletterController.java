package com.crescendo.spring.admin.controller.Rletter;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crescendo.spring.admin.model.dao.Rletter.IRletterDAO;
import com.crescendo.spring.admin.model.dao.Sletter.ISletterDAO;
import com.crescendo.spring.admin.model.vo.Rletter.RletterVO;
import com.crescendo.spring.admin.model.vo.Sletter.SletterVO;
import com.crescendo.spring.user.model.dao.letter.ILetterDAO;
import com.crescendo.spring.user.model.vo.UserVO;
import com.crescendo.spring.user.model.vo.letter.LetterVO;



@Controller
public class RletterController
{
	
		@Autowired
		private SqlSession sqlSession;
	
		
		// setter 주입
		public void setSqlSession(SqlSession sqlSession)
		{
			this.sqlSession = sqlSession;
		}
	
		//포워딩 
		private void forward(HttpServletRequest request, HttpServletResponse response, String path) throws ServletException, IOException 
		{ 
			  //포워딩 
			 RequestDispatcher rd = request.getRequestDispatcher(path); 
			 rd.forward(request, response); 
		}


	
		//받은쪽지 출력
		@RequestMapping(value="adminrletter.action", method=RequestMethod.GET)
		public String RletterList(Model model)
		{
			 try
			{
				IRletterDAO dao = sqlSession.getMapper(IRletterDAO.class);
				model.addAttribute("adminletter", dao.RletterList());
			}
			catch (Exception e)
			{
				System.out.println(e.toString());
			}
			 
			return "/admin/RmessageListView";
		 }
	
		//받은쪽지 삭제
		@RequestMapping(value="deleterletter.action", method=RequestMethod.GET)
		public String deleteRletter(int lrNum)
		{
			try
			{
				IRletterDAO dao = sqlSession.getMapper(IRletterDAO.class);
				dao.deleteRletter(lrNum);
			} 
			catch (Exception e)
			{
				System.out.println(e.toString());
			}
			return "redirect:adminrletter.action";
		 }
	
		//쪽지제목 클릭시 쪽지폼출력
		@RequestMapping(value="rletterconfirmform.action", method=RequestMethod.GET)
		public String RletterConfirm(int lrNum, HttpServletRequest request)
		{
			try
			{
				IRletterDAO dao = sqlSession.getMapper(IRletterDAO.class);
				request.setAttribute("data", dao.RletterConfirm(lrNum));
			}
			catch (Exception e)
			{
				System.out.println(e.toString());
			}
			
			return "/admin/RletterConfirm";
		}
		
			
	    //쪽지제목 클릭시 날짜 업데이트해서 읽은 날짜로 표기하기
		@RequestMapping(value="rletterupdatedate.action", method=RequestMethod.GET)
		public String ReadDateUpdate(RletterVO r)
		{
			try
			{
				IRletterDAO dao = sqlSession.getMapper(IRletterDAO.class);
				dao.ReadDateUpdate(r);
			}
			catch (Exception e)
			{
				System.out.println(e.toString());
			}
			
			return "redirect:adminrletter.action";
		}
	
	
	    //답장 입력 폼
		@RequestMapping(value="/rletterreplyform.action", method = RequestMethod.GET)
		public String RletterReplyConfirm(int lrNum, HttpServletRequest request)
		{

			try
			{
				IRletterDAO dao = sqlSession.getMapper(IRletterDAO.class);
				request.setAttribute("data", dao. RletterReplyConfirm(lrNum));
			}
			catch (Exception e)
			{
				System.out.println(e.toString());
			}
			return "/admin/RletterReplyForm";
		}
	 	
		//답장 보내기(관리자 받은쪽지함에서)
		@RequestMapping(value ="/reply.action", method = RequestMethod.POST)
		public String  RletterReply(SletterVO p, HttpSession session, HttpServletRequest request)
		{
			ISletterDAO sletterDAO = sqlSession.getMapper(ISletterDAO.class);
			ILetterDAO letterDAO = sqlSession.getMapper(ILetterDAO.class);
			LetterVO letterVO = new LetterVO();
			UserVO userVO = (UserVO)session.getAttribute("user");
			
			try
			{	
				// 관리자 보낸쪽지 insert
				//p.setUserNum(userVO.getUserNum());
				
				sletterDAO.insertAdminSletter(p);
				
				System.out.println("관리자쪽지들어갔슈");
				
				// 사용자 받은 쪽지 insert
				letterVO.setLeReceiver(p.getUserNum());
				letterVO.setLeTitle(p.getLsTitle());
				letterVO.setLeContent(p.getLsContent());
				letterVO.setLeId(p.getLsNum());
				
				letterDAO.adminSendUser(letterVO);
				
				System.out.println("사용자쪽지들어감");
				
			} 
			catch (Exception e)
			{
				e.printStackTrace();
			}
			return "redirect:adminrletter.action";
		}
		
		 //받는쪽지 삭제 클릭시 날짜 업데이트해서 삭제 날짜 update하기
		@RequestMapping(value="rletterupdatedeletedate.action", method=RequestMethod.GET)
		public String RDeleteDateUpdate(RletterVO r)
		{
			try
			{
				IRletterDAO dao = sqlSession.getMapper(IRletterDAO.class);
				dao.RDeleteDateUpdate(r);
			}
			catch (Exception e)
			{
				System.out.println(e.toString());
			}
			
			return "redirect:adminrletter.action";
		}
		//관리자 받은쪽지 삭제
		@RequestMapping(value="admindeleterletter.action", method=RequestMethod.GET)
		public String AdmindeleteRletter(int lrNum)
		{
			try
			{
				IRletterDAO dao = sqlSession.getMapper(IRletterDAO.class);
				dao.AdmindeleteRletter(lrNum);
			
			}
			catch (Exception e)
			{
				System.out.println(e.toString());
			}
			
			return "redirect:adminrletter.action";
		}
		
	

}