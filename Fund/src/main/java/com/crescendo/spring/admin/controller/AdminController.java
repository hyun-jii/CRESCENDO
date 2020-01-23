package com.crescendo.spring.admin.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.crescendo.spring.admin.model.dao.IAdminDAO;
import com.crescendo.spring.admin.model.dao.Sletter.ISletterDAO;
import com.crescendo.spring.admin.model.dao.admintotalmoney.IAdminTotalMoneyDAO;
import com.crescendo.spring.admin.model.dao.payback.IPayBackDAO;
import com.crescendo.spring.admin.model.dao.payok.IPayOkDAO;
import com.crescendo.spring.admin.model.dao.projectlistview1.IProjectListView1DAO;
import com.crescendo.spring.admin.model.dao.projectlistview2.IProjectListView2DAO;
import com.crescendo.spring.admin.model.dao.projectlistview3.IProjectListView3DAO;
import com.crescendo.spring.admin.model.dao.projectlistview4.IProjectListView4DAO;
import com.crescendo.spring.admin.model.vo.Sletter.SletterVO;
import com.crescendo.spring.admin.model.vo.projectlistview1.ProjectListView1VO;
import com.crescendo.spring.admin.model.vo.projectlistview2.ProjectListView2VO;
import com.crescendo.spring.board.VO.BoardVO;
import com.crescendo.spring.dao.Board.IBoardDAO;
import com.crescendo.spring.user.model.dao.IUserDAO;
import com.crescendo.spring.user.model.dao.letter.ILetterDAO;
import com.crescendo.spring.user.model.dao.log.ILogDAO;
import com.crescendo.spring.user.model.dao.out.IUserOutDAO;
import com.crescendo.spring.user.model.dao.project.app.IAppDAO;
import com.crescendo.spring.user.model.dao.project.progress.IProgressDAO;
import com.crescendo.spring.user.model.vo.letter.LetterVO;

@Controller
public class AdminController
{
	
	
	@Autowired
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession)
	{
		this.sqlSession = sqlSession;
	}

	// 관리자 메인 페이지 이동
	@RequestMapping(value = "/adminhome.action", method = RequestMethod.POST)
	public String adminhome(Model model)
	{
		// 일자 구하기(년-월-일)
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
		// 월 구하기 (년-월)
		SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM");
		// 년 구하기 (년)
		SimpleDateFormat format3 = new SimpleDateFormat("yyyy");
		
		// 오늘
		Calendar today = Calendar.getInstance();
		String day = format1.format(today.getTime());
		// 이번달
		String month = format2.format(today.getTime());
		// 올해
		String year = format3.format(today.getTime());
		
		// 1일전, 한달전
		today.add(Calendar.DATE, -1);
		String before1Day = format1.format(today.getTime());
		
		
		// 2일전, 두달전
		today.add(Calendar.DATE, -1);
		String before2Day = format1.format(today.getTime());
		
		// 3일전, 세달전
		today.add(Calendar.DATE, -1);
		String before3Day = format1.format(today.getTime());
		
		
		// 4일전, 네달전
		today.add(Calendar.DATE, -1);
		String before4Day = format1.format(today.getTime());
		
		
		// 5일전
		today.add(Calendar.DATE, -1);
		String before5Day = format1.format(today.getTime());
	
		
		// 6일전
		today.add(Calendar.DATE, -1);
		String before6Day = format1.format(today.getTime());
		
			
		try
		{
			IAdminDAO adminDAO = sqlSession.getMapper(IAdminDAO.class);
			IUserOutDAO userOutDAO = sqlSession.getMapper(IUserOutDAO.class);
			IAppDAO appDAO = sqlSession.getMapper(IAppDAO.class);
			IProgressDAO progressDAO = sqlSession.getMapper(IProgressDAO.class);
			ILogDAO logDAO = sqlSession.getMapper(ILogDAO.class);
			IPayOkDAO payOkDAO = sqlSession.getMapper(IPayOkDAO.class);
			IPayBackDAO payBackDAO = sqlSession.getMapper(IPayBackDAO.class);
			
			// 관리자 메인 페이지 총 회원 수
			int userCount = adminDAO.userCount();
			// 신규 회원 수
			int newUserCount = adminDAO.newUserCount();
			// 탈퇴 회원 수
			int outUserCount = userOutDAO.outUserCount();
			// 심사 대기 프로젝트 수
			int readyProject = appDAO.prjCount();
			// 진행중인 프로젝트 수
			int ingProject = progressDAO.ingPrjCount();
			// 마감된 프로젝트 수
			int endProject = progressDAO.endPrjCount();
			// 결제현황
			int payOkCount = payOkDAO.payOkCount();
			// 결제취소현황
			int payBackCount = payBackDAO.payBackCount();
			
			// 오늘 방문자 수
			int dayVisit1 = logDAO.dayCount(day);
			int dayVisit2 = logDAO.dayCount(before1Day);
			int dayVisit3 = logDAO.dayCount(before2Day);
			int dayVisit4 = logDAO.dayCount(before3Day);
			int dayVisit5 = logDAO.dayCount(before4Day);
			int dayVisit6 = logDAO.dayCount(before5Day);
			int dayVisit7 = logDAO.dayCount(before6Day);
			
			

			// 연도별 방문자 수
			int yearVisit = logDAO.yearCount(year);
			int monthVisit = logDAO.monthCount(month);
			
			
			model.addAttribute("userCount", userCount);
			model.addAttribute("newUserCount",newUserCount);
			model.addAttribute("outUserCount", outUserCount);
			model.addAttribute("readyProject", readyProject);
			model.addAttribute("ingProject", ingProject);
			model.addAttribute("endProject", endProject);
			model.addAttribute("payOkCount", payOkCount);
			model.addAttribute("payBackCount", payBackCount);
			
			
			model.addAttribute("day1", day);
			model.addAttribute("day2", before1Day);
			model.addAttribute("day3", before2Day);
			model.addAttribute("day4", before3Day);
			model.addAttribute("day5", before4Day);
			model.addAttribute("day6", before5Day);
			model.addAttribute("day7", before6Day);
			
			
			model.addAttribute("dayVisit1", dayVisit1);
			model.addAttribute("dayVisit2", dayVisit2);
			model.addAttribute("dayVisit3", dayVisit3);
			model.addAttribute("dayVisit4", dayVisit4);
			model.addAttribute("dayVisit5", dayVisit5);
			model.addAttribute("dayVisit6", dayVisit6);
			model.addAttribute("dayVisit7", dayVisit7);
			
			
			model.addAttribute("monthVisit", monthVisit);
			model.addAttribute("yearVisit", yearVisit);
			
			
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return "/admin/AdminHomeView";
	}
	
	// 관리자 메인페이지 이동
	// 위에 adminhome.action은 POST방식이라 단순 return이 안대여..
	@RequestMapping(value="/adminhome.action", method = RequestMethod.GET)
	public String adminhome()
	{
		return "/admin/AdminHomeView";
	}
	
	
	// 관리자 로그아웃
	@RequestMapping(value = "/adminlogout.action", method = RequestMethod.GET)
	public void adminLogout(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		String cp = request.getContextPath();
		
		session = request.getSession();
		
		session.removeAttribute("admin");
		session.invalidate();
		
		response.sendRedirect(cp + "/main.action");
		
	}
	
	// 관리자 비밀번호 변경 폼 
	@RequestMapping(value="/adminpwdchange.action", method = RequestMethod.GET)
	public String adminPwdChange()
	{
		return "/admin/AdminPwdChangeView";
	}
	
	// 관리자 결제 취소 목록 출력
	@RequestMapping(value="/paybacklist.action", method = RequestMethod.GET)
	public String payBackList(Model model)
	{
		try
		{
			IPayBackDAO dao = sqlSession.getMapper(IPayBackDAO.class);
			model.addAttribute("list",dao.payBackList());
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return "/admin/PayBackListView";
	}
	
	// 관리자 결제 완료 목록 출력
	@RequestMapping(value="/payoklist.action", method = RequestMethod.GET)
	public String payOkList(Model model)
	{
		try
		{
			IPayOkDAO dao = sqlSession.getMapper(IPayOkDAO.class);
			model.addAttribute("list", dao.payOkList());
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		
		return "admin/PayOkListView";
	}
	
	// 관리자 화면(회원 리스트 출력)
	@RequestMapping(value = "/userlist.action", method = RequestMethod.GET)
	public String memberList(Model model) 
	{
		try
		{
			IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
			
			model.addAttribute("list",dao.userList());

		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return "admin/MemberListView";
	}
	
	// 관리자 화면(검토 프로젝트 관리) 
	@RequestMapping(value="/projectlist1.action", method = RequestMethod.GET)
	public String projectListView1( Model model)
	{
		try 
		{
			IProjectListView1DAO dao = sqlSession.getMapper(IProjectListView1DAO.class);
			
			model.addAttribute("list", dao.projectListView1());

		} 
		catch (Exception e) 
		{                                          
			System.out.println(e.toString());
		}
		return "/admin/ProjectListView1";
	}
	

	//관리자 화면(검토 -> 승인완료)
	/*
	@RequestMapping(value = "/passproject.action", method = {RequestMethod.GET,RequestMethod.POST})
	public String passProject(ProjectListView1VO appNum, RedirectAttributes redirectAttributes)
	{
		System.out.println(appNum.getAppNum());
		
		try
		{
			IProjectListView1DAO dao = sqlSession.getMapper(IProjectListView1DAO.class);
			
			
			int result = dao.passProject(appNum);
			System.out.println("1번쟤"+result);
			int result2 = dao.insertProject(appNum);
			System.out.println("2번쟤"+result2);
			int result3 = dao.rejectProject(appNum);
			System.out.println("3번째"+result3);
			
			System.out.println("업데이트 상태 :   1이면 성공 : "+ result );
			System.out.println("인서트 상태 1이면 성공 : "+ result2 );
			System.out.println("인서트상태 1이면 거절입력성공: "+result3);
			
			if(result>0 && result2>0)
			{
				System.out.println("2개 데이터 업뎃 성공");
			}else if(result>0 && result3>0)
			{
				System.out.println("2개데이터(거절쪽데이터) 업뎃 성공");
			}
			else
			{
				System.out.println("데이터 업뎃 실패");
			}
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
=======
	   @RequestMapping(value = "/passproject.action", method = {RequestMethod.GET,RequestMethod.POST})
	   public String passProject(ProjectListView1VO appNum, RedirectAttributes redirectAttributes)
	   {
	      System.out.println(appNum.getAppNum());
	      
	      try
	      {
	         IProjectListView1DAO dao = sqlSession.getMapper(IProjectListView1DAO.class);
	         
	         
	         int result = dao.passProject(appNum);
	         System.out.println("1번쟤"+result);
	         int result2 = dao.insertProject(appNum);
	         System.out.println("2번쟤"+result2);
	         
	         
	         System.out.println("업데이트 상태 :   1이면 성공 : "+ result );
	         System.out.println("인서트 상태 1이면 성공 : "+ result2 );
	         
	         
	         if(result>0 && result2>0)
	         {
	            System.out.println("2개 데이터 업뎃 성공");
	         }
	         else
	         {
	            System.out.println("데이터 업뎃 실패");
	         }
	      } catch (Exception e)
	      {
	         System.out.println(e.toString());
	      }
		return "redirect:projectlist1.action"; 
	}
	*/
	
	//관리자 화면(검토 -> 승인완료)
	   @RequestMapping(value = "/passproject.action", method = {RequestMethod.GET,RequestMethod.POST})
	   public String passProject(ProjectListView1VO appNum, RedirectAttributes redirectAttributes)
	   {
	      System.out.println(appNum.getAppNum());
	      
	      try
	      {
	         IProjectListView1DAO dao = sqlSession.getMapper(IProjectListView1DAO.class);
	         
	         
	         int result = dao.passProject(appNum);
	         System.out.println("1번쟤"+result);
	         int result2 = dao.insertProject(appNum);
	         System.out.println("2번쟤"+result2);
	         
	         
	         System.out.println("업데이트 상태 :   1이면 성공 : "+ result );
	         System.out.println("인서트 상태 1이면 성공 : "+ result2 );
	         
	         
	         if(result>0 && result2>0)
	         {
	            System.out.println("2개 데이터 업뎃 성공");
	         }
	         else
	         {
	            System.out.println("데이터 업뎃 실패");
	         }
	      } catch (Exception e)
	      {
	         System.out.println(e.toString());
	      }

	      return "redirect:projectlist1.action"; 
	   }
	   
	   //관리자 화면(검토 -> 거절완료)
	   @RequestMapping(value = "/rejectproject.action", method = {RequestMethod.GET,RequestMethod.POST})
	   public String rejectProject(ProjectListView1VO appNum, RedirectAttributes redirectAttributes)
	   {
	      System.out.println(appNum.getAppNum());
	      
	      try
	      {
	         IProjectListView1DAO dao = sqlSession.getMapper(IProjectListView1DAO.class);
	         
	         
	         int result = dao.passProject(appNum);
	         System.out.println("1번쟤"+result);
	         int result3 = dao.rejectProject(appNum);
	         System.out.println("3번째"+result3);
	         
	         System.out.println("업데이트 상태 :   1이면 성공 : "+ result );
	         System.out.println("인서트상태 1이면 거절입력성공: "+result3);
	         
	         if(result>0 && result3>0)
	         {
	            System.out.println("2개데이터(거절쪽데이터) 업뎃 성공");
	         }
	         else
	         {
	            System.out.println("데이터 업뎃 실패");
	         }
	      } catch (Exception e)
	      {
	         System.out.println(e.toString());
	      }

	      return "redirect:projectlist1.action"; 
	   }
	
	//관리자 화면(검토->승인완료->진행중인프로젝트 등록)//인서트  여기가 처음 들어가는 부분 맞지 ?ㄴㄴ기달

	/*
	 * @RequestMapping(value ="/insertproject.action", method =
	 * {RequestMethod.POST,RequestMethod.GET}) public String
	 * insertProject(ProjectListView1VO p) {
	 * System.out.println("insert 메소드 호출 성공 ");
	 * System.out.println("insert로 넘어온 값 : " + p.getAppNum()); //ㅇㅇ디비확인해볼게 번호는 업뎃됫나
	 * 업뎃 됐을거야 근데 아마 저기서 넘겨주는 값이 없어서 여기는 호출 되는데 먹통인듯그러네 디비실행하기무섭다 개똥컴..
	 * 
	 * 
	 * try { IProjectListView1DAO dao
	 * =sqlSession.getMapper(IProjectListView1DAO.class); dao.insertProject(p);
	 * 
	 * } catch (Exception e) { System.out.println(e.toString()); }
	 * 
	 * return "redirect:projectlist1.action"; }
	 */
	  


	// 관리자 화면(거절 프로젝트 관리)
	@RequestMapping(value="/projectlist2.action", method = RequestMethod.GET)
	public String projectListDeny(Model model)
	{
		try
		{
			IProjectListView2DAO dao = sqlSession.getMapper(IProjectListView2DAO.class);
			
			model.addAttribute("list", dao.projectListDeny());
		} 
		catch (Exception e)
		{
			System.out.println();
		}
		return "/admin/ProjectListView2";
	}
	
	// 관리자 화면(거절에서 복구누르면 deny에서 finalnum삭제)
	   @RequestMapping(value="/deleteproject1.action", method = {RequestMethod.GET,RequestMethod.POST})
	   public String deleteProject1(ProjectListView2VO m, RedirectAttributes redirectAttributes)
	   {

	      System.out.println("DE 번호 :  " + m.getDeNum());
	      System.out.println("앱 번호 :  " + m.getAppNum());
	      
	      try
	      {
	         IProjectListView2DAO dao = sqlSession.getMapper(IProjectListView2DAO.class);
	         
	         int result = dao.deleteProject1(m);
	         int result1 = dao.deleteProject2(m);
	         int result2 = dao.updateProject3(m);
	         
	         System.out.println("deny de_num삭제"+result);
	         System.out.println("finam app_num삭제"+result1);
	         
	         
	         if(result >0 && result1 >0 && result2>0)
	         {
	            System.out.println("삭제 및 업데이트 dao 모두 성공 ");
	            
	            System.out.println("tbl_app의 app update  1이면 성공 "+result2);
	         }else
	         {
	            System.out.println(" 실패");
	         }
	         
	         
	      } catch (Exception e)
	      {
	         System.out.println(e.toString());
	      }
	         
	      return "redirect:projectlist2.action";
	   }
	
	
	// 관리자 화면(진행 프로젝트 관리)
	@RequestMapping(value="/projectlist3.action", method = RequestMethod.GET)
	public String projectList3(Model model)
	{
		try
		{
			IProjectListView3DAO dao = sqlSession.getMapper(IProjectListView3DAO.class);
			model.addAttribute("list", dao.ingProjectList());
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		
		return "/admin/ProjectListView3";
	}
	
	// 관리자 화면(마감 프로젝트 관리)
	@RequestMapping(value="/projectlist4.action", method = RequestMethod.GET)
	public String failProjectList4(Model model)
	{
		try
		{
			IProjectListView4DAO dao = sqlSession.getMapper(IProjectListView4DAO.class);
			
			
			model.addAttribute("list1", dao.failProjectList4());
			model.addAttribute("list2", dao.successProjectList4());
			
			
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return "/admin/ProjectListView4";
	}
	
	
	// 관리자 화면(총 수익)
	@RequestMapping(value="/totalmoney.action", method = {RequestMethod.GET,RequestMethod.POST})
	public String adminTotalMoney(Model model)
	{
		Calendar today = Calendar.getInstance();
		
		// 년 구하기 (년)
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy");
		// 월 구하기 (월)
		SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM");

		/* 월 구하기 */
		
		// 이번달
		today.add(Calendar.MONTH, 0);
		String month = format2.format(today.getTime());

		// 한달전
		today.add(Calendar.MONTH, -1);
		String before1 = format2.format(today.getTime());
		// 두달전
		today.add(Calendar.MONTH, -1);
		String before2 = format2.format(today.getTime());
		// 세달전
		today.add(Calendar.MONTH, -1);
		String before3 = format2.format(today.getTime());
		
		/* 년도 구하기 */
		
		// 이번년 2020
		today.add(Calendar.YEAR, +1);
		String year = format1.format(today.getTime());	
		// 1년 전 2019
		today.add(Calendar.YEAR, -1);
		String beforeYear1 = format1.format(today.getTime());
		// 2년 전 2018
		today.add(Calendar.YEAR, -1);
		String beforeYear2 = format1.format(today.getTime());
		// 3년 전 2017
		today.add(Calendar.YEAR, -1);
		String beforeYear3 = format1.format(today.getTime());
		// 4년 전 2016 
		today.add(Calendar.YEAR, -1);
		String beforeYear4 = format1.format(today.getTime());
		// 5년 전 2015
		today.add(Calendar.YEAR, -1);
		String beforeYear5 = format1.format(today.getTime());
		// 6년 전 2014
		today.add(Calendar.YEAR, -1);
		String beforeYear6 = format1.format(today.getTime());
		// 7년 전 2013
		today.add(Calendar.YEAR, -1);
		String beforeYear7 = format1.format(today.getTime());
		// 8년 전 2012
		today.add(Calendar.YEAR, -1);
		String beforeYear8 = format1.format(today.getTime());
		// 9년 전 2011
		today.add(Calendar.YEAR, -1);
		String beforeYear9 = format1.format(today.getTime());
		
	
		try
		{
			// 전체 총수익
			IAdminTotalMoneyDAO dao = sqlSession.getMapper(IAdminTotalMoneyDAO.class);
			model.addAttribute("data", dao.adminTotalMoney());

			// 최근 달 구하기
			model.addAttribute("month", month);
			model.addAttribute("month1", before1);
			model.addAttribute("month2", before2);
			model.addAttribute("month3", before3);

			// 최근 월 수익
			Integer totalMoney = dao.monthTotalMoney(month);
			Integer totalMoney1 = dao.monthTotalMoney(before1);
			Integer totalMoney2 = dao.monthTotalMoney(before2);
			Integer totalMoney3 = dao.monthTotalMoney(before3);

			model.addAttribute("day", totalMoney);
			model.addAttribute("day1", totalMoney1);
			model.addAttribute("day2", totalMoney2);
			model.addAttribute("day3", totalMoney3);

			
			/*---------------------------------------------------------------------------------------*/
			
			// 최근 년도 구하기
			model.addAttribute("year", year);
			model.addAttribute("year1", beforeYear1);
			model.addAttribute("year2", beforeYear2);
			model.addAttribute("year3", beforeYear3);
			model.addAttribute("year4", beforeYear4);
			model.addAttribute("year5", beforeYear5);
			model.addAttribute("year6", beforeYear6);
			model.addAttribute("year7", beforeYear7);
			model.addAttribute("year8", beforeYear8);
			model.addAttribute("year9", beforeYear9);
		
		
			
			// 최근 년도 수익
			Integer totalYear = dao.yearTotalMoney(year);
			Integer totalYear1 = dao.yearTotalMoney(beforeYear1);
			Integer totalYear2 = dao.yearTotalMoney(beforeYear2);
			Integer totalYear3 = dao.yearTotalMoney(beforeYear3);
			Integer totalYear4 = dao.yearTotalMoney(beforeYear4);
			Integer totalYear5 = dao.yearTotalMoney(beforeYear5);
			Integer totalYear6 = dao.yearTotalMoney(beforeYear6);
			Integer totalYear7 = dao.yearTotalMoney(beforeYear7);
			Integer totalYear8 = dao.yearTotalMoney(beforeYear8);
			Integer totalYear9 = dao.yearTotalMoney(beforeYear9);
			
			model.addAttribute("totalYear", totalYear);
			model.addAttribute("totalYear1", totalYear1);
			model.addAttribute("totalYear2", totalYear2);
			model.addAttribute("totalYear3", totalYear3);
			model.addAttribute("totalYear4", totalYear4);
			model.addAttribute("totalYear5", totalYear5);
			model.addAttribute("totalYear6", totalYear6);
			model.addAttribute("totalYear7", totalYear7);
			model.addAttribute("totalYear8", totalYear8);
			model.addAttribute("totalYear9", totalYear9);
			


		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return "admin/TotalMoney";
	}
		
	//board컨트롤러
	@RequestMapping(value="board.action")
	public String board(Model model)
	{
		IBoardDAO dao = sqlSession.getMapper(IBoardDAO.class);

		
		model.addAttribute("viewAll", dao.viewAll());
		
		return "boardList";
	}
	
	//board컨트롤러 디테일
	@GetMapping("detail.action")
	public String viewDetail(Model model,@RequestParam("seq")int seq,BoardVO vo )// BoardVO vo 

	{
		System.out.println("detail컨트롤러 들어옴 seq번호는 : "+ seq);
		IBoardDAO dao = sqlSession.getMapper(IBoardDAO.class);
		
	  
	  model.addAttribute("board", dao.viewDetail(seq));

	  return "viewDetail";
	}
	
	//board서머노트 컨트롤러 이동
	@GetMapping("swrite.action")
	public String boardWrite()
	{
		System.out.println("swrite get방식 컨트롤러 들어옴");
		return "boardWrite";
	}
	
	// POST 방식인 board게시판에 게시글 작성
	@PostMapping("swrite.action")
	public String write(BoardVO vo)
	{
		System.out.println("swrite post 방식 컨트롤러 들어옴  " );
		IBoardDAO dao = sqlSession.getMapper(IBoardDAO.class);
		
		int result = dao.insertBoard(vo);
		
		System.out.println("게시물 작성 결과 : "+ result );
		
		
		return "redirect:detail.action?seq="+vo.getSeq();
		
	}
	
	// 관리자 -> 창작자에게 쪽지보내기
	@RequestMapping(value = "/sendmaker.action", method = RequestMethod.POST)
	@ResponseBody
	public String sendMaker(String leTitle, String leContent, int userNum)
	{
		String result = null;
		ISletterDAO sletterDAO = sqlSession.getMapper(ISletterDAO.class);
		ILetterDAO letterDAO = sqlSession.getMapper(ILetterDAO.class);
		SletterVO sletterVO = new SletterVO();
		LetterVO letterVO = new LetterVO();
		
		try
		{
			if(leTitle != "" && leContent != "")
			{
				
				// 관리자 보낸 쪽지함에 insert
				sletterVO.setLsTitle(leTitle);
				sletterVO.setLsContent(leContent);
				sletterVO.setUserNum(userNum);
				
				sletterDAO.insertAdminSletter(sletterVO);
				
				
				// 사용자 받은 쪽지함에 insert
				letterVO.setLeTitle(leTitle);
				letterVO.setLeContent(leContent);
				letterVO.setLeReceiver(userNum);
				letterVO.setLeId(sletterVO.getLsNum());
				
				letterDAO.adminSendUser(letterVO);
				
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
		
		
		
		return result;
	}	
}