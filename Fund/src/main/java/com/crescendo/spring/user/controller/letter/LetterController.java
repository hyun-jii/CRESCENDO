package com.crescendo.spring.user.controller.letter;


import javax.servlet.http.HttpServletRequest;

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
import com.crescendo.spring.user.model.vo.project.step3.Step3VO;

@Controller
public class LetterController
{
	
	@Autowired
	private SqlSession sqlSession;
	
	// session 주입
	public void setSqlSession(SqlSession sqlSession)
	{
		this.sqlSession = sqlSession;
	}
	

    //사용자 받은쪽지 출력
	@RequestMapping(value="rletter.action", method=RequestMethod.GET)
	public String letterList(Model model, HttpSession session, HttpServletRequest request)
	{
		try
		{
			ILetterDAO dao = sqlSession.getMapper(ILetterDAO.class);
			
			//세션을 요청
			session = request.getSession();
			UserVO vo = (UserVO) session.getAttribute("user");
			int userNum = vo.getUserNum();
			
			model.addAttribute("data", dao.letterList(userNum));
			
		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return "MyReceiveLetter";
	}
	
	 //사용자 보낸쪽지 출력
	@RequestMapping(value="sletter.action", method=RequestMethod.GET)
	public String sletterList(Model model, HttpSession session, HttpServletRequest request)
	{
		try
		{
			ILetterDAO dao = sqlSession.getMapper(ILetterDAO.class);
			
			session = request.getSession();
			UserVO vo = (UserVO) session.getAttribute("user");
			int userNum = vo.getUserNum();
			
			model.addAttribute("data", dao.sletterList(userNum));
		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return "MySendLetter";
	}
	
	
	//받은쪽지 삭제
	@RequestMapping(value="deleteletter.action", method=RequestMethod.GET)
	public String deleteLetter(int leNum)
	{
		try
		{
			ILetterDAO dao = sqlSession.getMapper(ILetterDAO.class);
			dao.deleteLetter(leNum);
			
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return "redirect:rletter.action";
	 }
	

	//사용자가 관리자에게 보낸쪽지 삭제시
	@RequestMapping(value="letterupdatedeletesdate.action", method=RequestMethod.GET)
	public String userDeleteSletter(LetterVO r, int leNum)
	{
		try
		{ 
			ILetterDAO dao = sqlSession.getMapper(ILetterDAO.class);
			//사용자보낸쪽지 삭제날짜 업데이트
			dao.DeleteSDateUpdate(r);
			//관리자받은쪽지 보낸이 삭제일 업데이트
			dao.userDeleteadminsdate(r);
		
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return "redirect:sletter.action";
	 }


	//보낸쪽지 삭제
	@RequestMapping(value="sdeleteletter.action", method=RequestMethod.GET)
	public String deleteSLetter(int leNum)
	{
		try
		{
			ILetterDAO dao = sqlSession.getMapper(ILetterDAO.class);
			dao.deleteSLetter(leNum);
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return "redirect:sletter.action";
	 }
		
	
	//받은쪽지제목 클릭시 쪽지폼출력
	@RequestMapping(value="letterconfirmform.action", method=RequestMethod.GET)
	public String letterConfirm(int leNum, HttpServletRequest request)
	{
		try
		{
			ILetterDAO dao = sqlSession.getMapper(ILetterDAO.class);
			request.setAttribute("data", dao.letterConfirm(leNum));
		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return "MyReceiveLetterConfirm";
	}
	
	//보낸쪽지제목 클릭시 쪽지폼출력
	@RequestMapping(value="lettersconfirmform.action", method=RequestMethod.GET)
	public String letterSConfirm(int leNum, HttpServletRequest request)
	{
		try
		{
			ILetterDAO dao = sqlSession.getMapper(ILetterDAO.class);
			request.setAttribute("data", dao.letterSConfirm(leNum));
		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return "MySendLetterConfirm";
	}
	
	// 보낸쪽지 확인후 리스트로 돌아가기
	@RequestMapping(value="/sletterok.action", method = RequestMethod.GET)
	public String noticeInsertForm()
	{
		return "/admin/NoticeInsertForm";
	}

	 //쪽지제목 클릭시 날짜 업데이트해서 읽은 날짜로 표기하기
	@RequestMapping(value="letterupdatedate.action", method=RequestMethod.GET)
	public String ReadDateUpdate(LetterVO r)
	{
		try
		{
			ILetterDAO dao = sqlSession.getMapper(ILetterDAO.class);
			dao.ReadDateUpdate(r);
		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return "redirect:rletter.action";
	}

	
	 //받는쪽지 삭제 클릭시 날짜 업데이트해서 삭제 날짜 update하기
	@RequestMapping(value="letterupdatedeletedate.action", method=RequestMethod.GET)
	public String DeleteDateUpdate(LetterVO r)
	{
		try
		{
			ILetterDAO dao = sqlSession.getMapper(ILetterDAO.class);
			dao.DeleteDateUpdate(r);
		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return "redirect:rletter.action";
	}
	
	 //보낸쪽지 삭제 클릭시 날짜 업데이트해서 삭제 날짜 update하기
	@RequestMapping(value="lettersupdatedeletedate.action", method=RequestMethod.GET)
	public String DeleteSDateUpdate(LetterVO r)
	{
		try
		{
			ILetterDAO dao = sqlSession.getMapper(ILetterDAO.class);
			dao.DeleteSDateUpdate(r);
		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return "redirect:sletter.action";
	}
	
	 //답장 입력 폼
	@RequestMapping(value="/letterreplyform.action", method = RequestMethod.GET)
	public String LetterReplyConfirm(int leNum, HttpServletRequest request)
	{

		
		try
		{
			ILetterDAO dao = sqlSession.getMapper(ILetterDAO.class);
			request.setAttribute("data", dao.letterReplyConfirm(leNum));
		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return "MyReceiveLetterReply";
	}
 	
	//답장 보내기
	//관리자에게
	// 사용자 보낸 쪽지함에 insert
	@RequestMapping(value ="/insertletter2.action", method = RequestMethod.GET)
	public String  insert2Rletter(LetterVO p, HttpSession session)
	{
		IRletterDAO rletterDAO = sqlSession.getMapper(IRletterDAO.class);
		ILetterDAO letterDAO = sqlSession.getMapper(ILetterDAO.class);
		RletterVO rletterVO = new RletterVO();
		UserVO userVO = (UserVO)session.getAttribute("user");
		
		try
		{	
			// 사용자 보낸 쪽지함 insert
			p.setLeSender(userVO.getUserNum());
			
			letterDAO.userSendAdmin(p);
			
			System.out.println("g현지의 쪽지테스투");
			System.out.println(p.getLeNum());
			
			// 관리자 받은 쪽지함 insert
			rletterVO.setUserNum(userVO.getUserNum());
			rletterVO.setLrTitle(p.getLeTitle());
			rletterVO.setLrContent(p.getLeContent());
			rletterVO.setLrId(p.getLeNum());
			
			rletterDAO.insertAdminRletter(rletterVO);
			
			
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return "redirect:rletter.action";
	}
	//답장 보내기
	//사용자에게
	@RequestMapping(value ="/insertletter.action", method = RequestMethod.GET)
	public String  insertRletter(LetterVO p, HttpSession session)
	{
		ISletterDAO sletterDAO = sqlSession.getMapper(ISletterDAO.class);
		ILetterDAO letterDAO = sqlSession.getMapper(ILetterDAO.class);
		SletterVO sletterVO = new SletterVO();
		UserVO userVO = (UserVO)session.getAttribute("user");
		
		try
		{
			// 관리자 보낸 쪽지함 insert
			sletterVO.setUserNum(userVO.getUserNum());
			sletterVO.setLsTitle(p.getLeTitle());
			sletterVO.setLsContent(p.getLeContent());
			
			sletterDAO.insertAdminSletter(sletterVO);
			
			// 사용자 받은 쪽지함 insert
			p.setLeReceiver(userVO.getUserNum());
			
			letterDAO.adminSendUser(p);
			
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
			return "redirect:rletter.action";
		}

}