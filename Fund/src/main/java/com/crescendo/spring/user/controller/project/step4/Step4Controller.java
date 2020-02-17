package com.crescendo.spring.user.controller.project.step4;

import java.util.Arrays;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.crescendo.spring.user.model.dao.project.app.IAppDAO;
import com.crescendo.spring.user.model.dao.project.step4.IStep4DAO;
import com.crescendo.spring.user.model.vo.project.step4.Step4VO;
import com.crescendo.spring.user.model.vo.projectpage.ProjectPageVO;



@Controller
public class Step4Controller
{
	private SqlSession sqlSession;
	
	@Autowired
	public void setSqlSession(SqlSession sqlSession)
	{
		this.sqlSession = sqlSession;
	}

	// Step3 → Step4페이지 전환
	@RequestMapping(value = "/step4.action", method = RequestMethod.GET)
	public String step4(HttpSession session) throws Exception
	{
		
		int a=0; //프로젝트 번호
		
		//String PrjTitle=""; //프로젝트 제목
		//String PrjSname=""; //프로젝트 소제목(요약)
		
		
		//System.out.println("들어온 프로젝트 넘 값 : " + prjNum);
		try 
		{
			
		a = (int)session.getAttribute("prjNum");
		
		System.out.println("프로젝트 번호 인트형 변환 값 : "  + a);
		
		//step1에서 해당 프로젝트의 제목,내용,금액을 가져오기 위한 쿼리문 실행
			/*
			 * IStep4DAO dao = sqlSession.getMapper(IStep4DAO.class);
			 * 
			 * ProjectPageVO vo = new ProjectPageVO();
			 * 
			 * vo = dao.checkform(a); System.out.println("vo실행되었는가 :  " + vo);
			 * 
			 * 
			 * System.out.println("프로젝트 제목  : " + vo.getPrjTitle());
			 * System.out.println("프로젝트 요약 : " + vo.getPrjSname());
			 * System.out.println("프로젝트 목표금액 : " + vo.getPrjGoal());
			 */
		
		//형변환
		//PrjTitle = (String)vo.getPrjTitle();
		//PrjSname = (String)vo.getPrjSname();

			/*
			 * String[] array = { "10새", "10새기", "10새리", "10세리", "10쉐이", "10쉑", "10스",
			 * "10쌔", "10쌔기", "10쎄", "10알", "10창", "10탱", "18것", "18넘", "18년", "18노", "18놈",
			 * "18뇬", "18럼", "18롬", "18새", "18새끼", "18색", "18세끼", "18세리", "18섹", "18쉑",
			 * "18스", "18아", "c파", "c팔", "fuck", "ㄱㅐ", "ㄲㅏ", "ㄲㅑ", "ㄲㅣ", "ㅅㅂㄹㅁ", "ㅅㅐ",
			 * "ㅆㅂㄹㅁ", "ㅆㅍ", "ㅆㅣ", "ㅆ앙", "ㅍㅏ", "凸","같은년", "같은뇬", "개같은", "개구라", "개년", "개놈",
			 * "개뇬", "개뻥", "개뿔", "개새", "개새기", "개새끼", "개새키", "개색기", "개색끼", "개색키", "개색히",
			 * "개섀끼", "개세", "개세끼", "개세이", "개소리", "개쑈", "개쇳기", "개수작", "개쉐", "개쉐리", "개쉐이",
			 * "개쉑", "개쉽", "개스끼", "개시키", "개십새기", "개십새끼", "개쐑", "개씹", "개아들", "개자슥", "개자지",
			 * "개접", "개좌식", "개허접", "걔새", "걔수작", "걔시끼", "걔시키", "걔썌", "게색기", "게색끼", "광뇬",
			 * "구라", "그년", "그새끼", "냄비", "뇬", "눈깔", "뉘미럴", "도라이", "돈놈", "돌아이", "돌은놈", "되질래",
			 * "뒈져", "뒈져라", "뒈진", "뒈진다", "뒈질", "뒤질래", "등신", "디져라", "디진다", "디질래", "딩시", "따식",
			 * "때놈", "또라이", "똘아이", "똘아이", "뙈놈", "뙤놈", "뙨넘", "뙨놈", "뚜쟁", "띠바", "띠발", "띠불",
			 * "띠팔", "메친넘", "메친놈", "미췬", "미췬", "미친", "미친넘", "미친년", "미친놈", "미친새끼", "미친스까이",
			 * "미틴", "미틴넘", "미틴년", "미틴놈", "바랄년", "병자", "뱅마", "뱅신", "벼엉신", "병쉰", "병신", "부랄",
			 * "부럴", "불알", "불할", "붕가", "붙어먹", "뷰웅", "븅", "븅신", "빌어먹", "새새끼", "새키", "색끼",
			 * "생쑈", "세갸", "세꺄", "세끼", "쇼하네", "쉐", "쉐기", "쉐끼", "쉐리", "쉐에기", "쉐키", "쉣", "쉨",
			 * "쉬발", "쉬밸", "쉬벌", "쉬뻘", "쉬펄", "쉽알","시끼", "시댕", "시뎅", "시랄", "시발", "시벌", "시부랄",
			 * "시부럴", "시부리", "시불", "시브랄", "시팍", "시팔", "시펄", "심탱", "십8", "십라", "십새", "십새끼",
			 * "십세", "십쉐", "십쉐이", "십스키", "십쌔", "십창", "십탱", "싶알", "싸가지", "싹아지", "쌉년", "쌍넘",
			 * "쌍년", "쌍놈", "쌍뇬", "쒸펄", "쓰바", "쓰박", "쓰발", "쓰벌", "쓰팔", "씁새", "씁얼", "씌파", "씨8",
			 * "씨끼", "씨댕", "씨뎅", "씨바", "씨바랄", "씨박", "씨발", "씨방", "씨방새", "씨방세", "씨밸", "씨뱅",
			 * "씨벌", "씨벨", "씨봉", "씨봉알", "씨부랄", "씨부럴", "씨부렁", "씨부리", "씨불", "씹팔", "씹할", "씹헐",
			 * "아가리", "아갈", "아갈이", "아갈통", "아구창", "아구통", "아굴", "얌마", "양넘", "양년", "양놈", "엄창",
			 * "엠병", "염병", "엿같", "옘병", "옘빙", "왜년", "왜놈", "욤병", "육갑", "은년", "을년", "이년",
			 * "이새끼", "이새키", "이스끼", "이스키", "임마", "자슥", "잡것", "잡넘", "잡년", "잡놈", "저년", "저새끼",
			 * "접년", "젖밥", "조까", "조까치", "조낸", "조또", "조랭", "조쟁이", "조지냐", "조진다", "조찐", "조질래",
			 * "존나", "존나게", "존니", "좃또", "좃만", "좃밥", "좆같", "좆까", "좆나", "좆또","좆밥","좆찐", "좇같",
			 * "좇이", "좌식", "팔럼", "퍽큐", "호로", "호로놈", "호로새끼", "호로색", "호로쉑", "호로스까이", "호로스키",
			 * "후라들", "후래자식", "후레", "후뢰" };
			 */
		
		//조건검사 만족을 위해 boolean 선언
		//boolean ptitlecheck= false;
		//boolean psnamecheck= false;
		
		//int pmoneycheck = 100000000;
		//데이터 검사 
		// :: ->람다식 표현으로 파라미터를 리턴으로 매핑 ::
		//ptitlecheck =Arrays.stream(array).anyMatch(PrjTitle::equals);
		//psnamecheck =Arrays.stream(array).anyMatch(PrjSname::equals);
		
		//데이터 들어있으면 true 없으면 false
		//System.out.println("제목 조건검사 결과 : " + ptitlecheck);
		//System.out.println("소제목 조건검사 결과 : "+ psnamecheck);
	
		
		//제약조건이 1개라도 만족하면  -> dao실행하면서 조건 불충분으로 만들어버려야해 . 
		//if(ptitlecheck==true || psnamecheck==true || vo.getPrjGoal()>=pmoneycheck) 
		//{
		//	System.out.println("제약조건에 위배되는 항목이 존재합니다 확인이 필요합니다.");
			
			//여기서는 이제 평가코드 번호를 미리 인서트 시켜놔야하는데...
			
			
		//} 
		//else 
		//{
			  
			
	     //}
			 
			
		
		/*
			 * 조건검사 문자열 맞는지 출력해볼까 ? for(String i:array) {
			 * 
			 * System.out.println(i); }
			 */
			 
		}
		catch(Exception e)
		{
			System.out.println(e.toString());
		}
		//dao.checkform(prjNum);
		return "step4";
	}
	
	// 창작자 정보insert
	@RequestMapping(value="/insertmaker.action", method = RequestMethod.POST)
	public String insertMaker(Step4VO vo, HttpSession session,RedirectAttributes rd)
	{
		System.out.println("-----------insertmaker메소드 진입 -------------");
		
		//int evaNum = 0;    //조건 위배 번호
		int prjNum = 0;		//프로젝트 번호

		String PrjTitle=""; //프로젝트 제목
		String PrjSname=""; //프로젝트 소제목(요약)
		

		ProjectPageVO pvo = new ProjectPageVO();
		
		
		try
		{
			IStep4DAO dao = sqlSession.getMapper(IStep4DAO.class);
			
			// prjNum 넘겨주기
			prjNum = (int) session.getAttribute("prjNum");
			//ssession.setAttribute("prjNum", prjNum);
			System.out.println("프로젝트번호:"  + prjNum);
			
			pvo = dao.checkform(prjNum);
			
			System.out.println("프로젝트 제목  : " + pvo.getPrjTitle());
			System.out.println("프로젝트 요약 : " + pvo.getPrjSname());
			System.out.println("프로젝트 목표금액 : " + pvo.getPrjGoal());
			

			//형변환
			PrjTitle = (String)pvo.getPrjTitle();
			PrjSname = (String)pvo.getPrjSname();

		String[] array = 
			{ 
				"10새", "10새기", "10새리", "10세리", "10쉐이", "10쉑", "10스", "10쌔", "10쌔기", "10쎄", "10알", "10창",
				"10탱", "18것", "18넘", "18년", "18노", "18놈", "18뇬", "18럼", "18롬", "18새", "18새끼", "18색", "18세끼", "18세리",
				"18섹", "18쉑", "18스", "18아", "c파", "c팔", "fuck", "ㄱㅐ", "ㄲㅏ", "ㄲㅑ", "ㄲㅣ", "ㅅㅂㄹㅁ", "ㅅㅐ", "ㅆㅂㄹㅁ", "ㅆㅍ",
				"ㅆㅣ", "ㅆ앙", "ㅍㅏ", "凸","같은년", "같은뇬", "개같은", "개구라", "개년", "개놈", "개뇬",
				"개뻥", "개뿔", "개새", "개새기", "개새끼", "개새키", "개색기", "개색끼", "개색키", "개색히", "개섀끼",
				"개세", "개세끼", "개세이", "개소리", "개쑈", "개쇳기", "개수작", "개쉐", "개쉐리", "개쉐이", "개쉑", "개쉽", "개스끼", "개시키", "개십새기",
				"개십새끼", "개쐑", "개씹", "개아들", "개자슥", "개자지", "개접", "개좌식", "개허접", "걔새", "걔수작", "걔시끼", "걔시키", "걔썌",
			    "게색기", "게색끼", "광뇬",  "구라",  "그년", "그새끼", "냄비", "뇬", "눈깔", "뉘미럴",
				"도라이", "돈놈", "돌아이", "돌은놈", "되질래", "뒈져", "뒈져라", "뒈진", "뒈진다", "뒈질", "뒤질래", "등신", "디져라", "디진다", "디질래",
				"딩시", "따식", "때놈", "또라이", "똘아이", "똘아이", "뙈놈", "뙤놈", "뙨넘", "뙨놈", "뚜쟁", "띠바", "띠발", "띠불", "띠팔", "메친넘",
				"메친놈", "미췬", "미췬", "미친", "미친넘", "미친년", "미친놈", "미친새끼", "미친스까이", "미틴", "미틴넘", "미틴년", "미틴놈", "바랄년",
				"병자", "뱅마", "뱅신", "벼엉신", "병쉰", "병신", "부랄", "부럴", "불알", "불할", "붕가", "붙어먹", "뷰웅", "븅", "븅신", "빌어먹",
				"새새끼", "새키", "색끼", "생쑈", "세갸", "세꺄", "세끼", "쇼하네", "쉐", "쉐기", "쉐끼", "쉐리", "쉐에기", "쉐키",
				"쉣", "쉨", "쉬발", "쉬밸", "쉬벌", "쉬뻘", "쉬펄", "쉽알","시끼", "시댕", "시뎅", "시랄", "시발",
				"시벌", "시부랄", "시부럴", "시부리", "시불", "시브랄", "시팍", "시팔", "시펄", "심탱", "십8", "십라", "십새",
				"십새끼", "십세", "십쉐", "십쉐이", "십스키", "십쌔", "십창", "십탱", "싶알", "싸가지", "싹아지", "쌉년", "쌍넘", "쌍년", "쌍놈", "쌍뇬",
				"쒸펄", "쓰바", "쓰박", "쓰발", "쓰벌", "쓰팔", "씁새", "씁얼", "씌파", "씨8", "씨끼", "씨댕", "씨뎅", "씨바", "씨바랄", "씨박",
				"씨발", "씨방", "씨방새", "씨방세", "씨밸", "씨뱅", "씨벌", "씨벨", "씨봉", "씨봉알", "씨부랄", "씨부럴", "씨부렁", "씨부리", "씨불",
				"씹팔", "씹할", "씹헐", "아가리", "아갈", "아갈이", "아갈통", "아구창", "아구통", "아굴", "얌마", "양넘", "양년", "양놈", "엄창", "엠병",
			    "염병", "엿같", "옘병", "옘빙",  "왜년", "왜놈", "욤병", "육갑", "은년", "을년", "이년", "이새끼", "이새키", "이스끼",
				"이스키", "임마", "자슥", "잡것", "잡넘", "잡년", "잡놈", "저년", "저새끼", "접년", "젖밥", "조까", "조까치", "조낸", "조또", "조랭",
				"조쟁이", "조지냐", "조진다", "조찐", "조질래", "존나", "존나게", "존니", 
				"좃또", "좃만", "좃밥",  "좆같", "좆까", "좆나", "좆또","좆밥","좆찐", "좇같", "좇이", "좌식",
				"팔럼", "퍽큐", "호로", "호로놈", "호로새끼", "호로색", "호로쉑", "호로스까이", "호로스키", "후라들", "후래자식", "후레", "후뢰" 
			};
			
			//조건검사 만족을 위해 boolean 선언
			boolean ptitlecheck= false;
			boolean psnamecheck= false;
			
			int pmoneycheck = 100000000;
			//데이터 검사 
			// :: ->람다식 표현으로 파라미터를 리턴으로 매핑 ::
			ptitlecheck =Arrays.stream(array).anyMatch(PrjTitle::equals);
			psnamecheck =Arrays.stream(array).anyMatch(PrjSname::equals);
			
			//데이터 들어있으면 true 없으면 false
			System.out.println("제목 조건검사 결과 : " + ptitlecheck);
			System.out.println("소제목 조건검사 결과 : "+ psnamecheck);
			System.out.println("금액 결과 :" + pvo.getPrjGoal());
			
			//제약조건이 1개라도 걸리면 
			if(ptitlecheck==true || psnamecheck==true ||(int) pvo.getPrjGoal() >= (int) pmoneycheck) 
			{
				
				//evaNum=2;
				System.out.println("위배되는 항목은 다음과 같습니다.");
				
				
				if(ptitlecheck==true)
				{
					System.out.println("제목에서 위배");
				}
				else if(psnamecheck==true)
				{
					System.out.println("요약에서 위배");
				}
				else if((int) pvo.getPrjGoal() >= (int) pmoneycheck)
				{
					System.out.println("금액에서 위배");
				}
				
				dao.insertMaker(vo); 
				
				
				Step4VO s4vo = new Step4VO();
				

				s4vo = dao.step4get(prjNum);
				System.out.println("prjNum을 통해 insert된 maNum값은 : " + s4vo.getMaNum());
				
				//2.TBL_APP에 평가코드를 2로 insert 하는 작업

				//int result2 = appdao.appinsert(maNum, evaNum);
				int result2=dao.appinsert(s4vo.getMaNum());
				System.out.println("insert확인 : " + result2);
				
					
				rd.addFlashAttribute("msg", "프로젝트 검토가 요청되었습니다!");

				//메인으로
				return "redirect:main.action";
				
			} 
			
			//제약조건이 걸리는게 없다면
			else 
			{
				//1.TBL_MAKER테이블 데이터 삽입
				dao.insertMaker(vo);
				

				Step4VO s4vo = new Step4VO();
				s4vo = dao.step4get(prjNum);
				System.out.println("제약조건 걸리는거 없을 때 getMaNum : "+s4vo.getMaNum());
				//2.평가코드번호를 1번(조건 만족)으로 insert
				//시퀀스값,최종접수번호값,평가코드번호 필요
				
				int result3 = dao.sappinsert(s4vo.getMaNum());
				System.out.println("result3값 확인 :" + result3);
				
				rd.addFlashAttribute("msg", "프로젝트 검토가 요청되었습니다!");
				//메인으로
				return "redirect:main.action";

		     }
			
			
		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		

		return "redirect:main.action";
	}
	
	//Step4 ->submit되는 순간 검사를 위해 가져옴
	@RequestMapping(value="checkform.action", method=RequestMethod.POST)
	public String check()
	{
		return "";
	}
}