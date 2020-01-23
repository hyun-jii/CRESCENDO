package com.crescendo.spring.user.controller;


import java.io.IOException;
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.crescendo.spring.admin.model.dao.charge.IChargeDAO;
import com.crescendo.spring.admin.model.dao.payok.IPayOkDAO;
import com.crescendo.spring.admin.model.vo.how.AdminHowVO;
import com.crescendo.spring.admin.model.vo.payok.PayOkVO;
import com.crescendo.spring.common.util.model.exception.ExistsEmailException;
import com.crescendo.spring.common.util.model.vo.CommonMail;
import com.crescendo.spring.naver.NaverLoginBO;
import com.crescendo.spring.summernote.model.SummerService;
import com.crescendo.spring.user.model.dao.IUserDAO;
import com.crescendo.spring.user.model.vo.UserVO;
import com.crescendo.spring.user.model.vo.payrequest.PayRequestVO;
import com.crescendo.spring.user.model.vo.projectpage.ProjectPageVO;
import com.github.scribejava.core.model.OAuth2AccessToken;

@Controller
public class UserController 
{
	@Autowired
	private SummerService sService;
	
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;
	
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO)
	{
		this.naverLoginBO=naverLoginBO;
	}
	
	@Autowired
	private SqlSession sqlSession;
	

	private CommonMail cm = new CommonMail();
	
	@Autowired
	private JavaMailSenderImpl mailSender = new JavaMailSenderImpl(); 
	
	@Value("${mailSender.username}")
	private String username;
	
	
	// setter 주입
	public void setSqlSession(SqlSession sqlSession)
	{
		this.sqlSession = sqlSession;
	}

	
	//회원가입창으로이동 ,약관정책 출력
	@RequestMapping(value="/signup.action", method=RequestMethod.GET)
	private String chargeList(Model model)
	{

		try
		{
			IChargeDAO dao = sqlSession.getMapper(IChargeDAO.class);

			model.addAttribute("promise", dao.promiseList());
		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return "SignupClause";

	}
	
	// 회원가입 폼으로 이동
	@RequestMapping(value="/signupform.action", method = RequestMethod.GET)
	public String signupform()
	{
		return "Signup";
	}

	//정책 동의 후 회원가입 폼으로 이동
	@RequestMapping(value="/Snext.action")
	public String Snext()
	{
		return "Signup";
	}

	// 회원가입 form insert
	@RequestMapping(value ="/signupinsertform.action", method = RequestMethod.POST)
	public String userInsert(UserVO user)
	{
		System.out.println("========userInsert 컨트롤러 내용 ==========");
		System.out.println(user.getUserNum());
		System.out.println(user.getUserName());
		System.out.println(user.getUserPw());
		System.out.println(user.getUserInDate());
		System.out.println(user.getUserEmail());
		System.out.println(user.getUserTel());
		System.out.println(user.getZipCode());
		System.out.println(user.getUserAddr());
		
			
		try
		{				
			IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
			int result = dao.userInsert(user);
			System.out.println(result);
			if(result>0)
			{
				System.out.println("데이터 삽입 성공");
			}
			else
			{
				System.out.println("데이터 삽입 안됨");
			}
		} 
		catch (Exception e)
		{
				System.out.println(e.toString());
		}
		return "redirect:signupok.action";
	}
		
	// 회원가입 성공안내창 으로 이동
	@RequestMapping(value="/signupok.action", method = {RequestMethod.GET, RequestMethod.POST})
	public String signupok()
	{
		return "SignupOk";
	}


	// 유저 로그아웃
	@RequestMapping(value = "/userlogout.action", method = RequestMethod.GET)
	public void userLogout(HttpSession session, HttpServletRequest requset, HttpServletResponse response) throws IOException
	{
		String cp = requset.getContextPath();
	
		session =  requset.getSession();	

		session.removeAttribute("user");
		session.invalidate();	

		response.sendRedirect(cp + "/main.action");

	}

	//이름 중복검사
	@ResponseBody
	@RequestMapping(value = "checkname.action", method = {RequestMethod.GET,RequestMethod.POST})
	public String checkName(String userName)throws Exception
	{

		System.out.println("넘겨받은 닉네임 : "+userName);
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		
		List<UserVO> name = dao.checkName(userName);
		
		String result=null;
		if(!name.isEmpty())
		{
			System.out.println("데이터 확인");
			result = "1"; //닉네임 존재
		}
		else
		{
			System.out.println("데이터 비어있음");
			result = "0"; //닉네임 없음
		}
		System.out.println("결과 값 : " + result);
		return result;
	}

	//이메일 찾기
	@ResponseBody
	@RequestMapping(value="checkEmail.action" ,method= RequestMethod.POST)
	public String chckEmail(String userEmail)throws Exception
	{
		System.out.println("넘겨받은 이메일 : "+userEmail);
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		
		List<UserVO> user = dao.checkEmail(userEmail);
		
			
		String result=null;
		if(!user.isEmpty())
		{
			System.out.println("데이터 확인");
			result = "1"; //이메일 존재
		}
		else
		{
			System.out.println("데이터 비어있음");
			result = "0"; //이메일 없음
		}
			
		System.out.println("결과 값 : " + result);
		return result;
	}
	
	
	//회원가입시 이메일 코드 인증하는 부분
	@ResponseBody
	@RequestMapping(value="authEmail.action")
	public String userEmail(@RequestParam(value = "userEmail") String userEmail) throws Exception {
		
		System.out.println("authEmail에 넘겨받은 값 :" + userEmail);
		String code = cm.setCode(); //인증번호 코드 입력

		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		List<UserVO> user = dao.checkEmail(userEmail); //이메일 중복검사
		
		//System.out.println(code);
		System.out.println("넘겨받은 유저값 :" + user);
		
		 try {

			 if(!user.isEmpty()) {
				 throw new ExistsEmailException();
			 }else {
				 MimeMessage msg = mailSender.createMimeMessage();
				 MimeMessageHelper msgHelper = new MimeMessageHelper(msg, true, "UTF-8");
				 
				 msgHelper.setFrom(username);
				 System.out.println(username);
				 msgHelper.setSubject("크레센도 회원가입 인증번호 발송 메일입니다.");
				 
				 String htmlContent = "<h3 style=\"text-align: center\"><u>Welcome! Do Dream</u></h3><div align=\"center\"><br>"
						 	+"<div align=\"center\"><img src=\"https://i.imgur.com/hiZDlxy.png\" style=\"width: 10%;\"><br></div>"
						 	+" 본 메일은 발신 전용 메일입니다.<br> 아래의 인증번호를 정확히 입력해주세요. <br>"
						 	+"인증번호 "+"<u><mark>"+ code +"</mark></u>"+" 를 입력해주세요"+"</div>";

				 
				 msgHelper.setText(htmlContent, true);
				 
				 msgHelper.setTo(userEmail);
				 			 
				 mailSender.send(msg);				 
			 }
		 }catch (ExistsEmailException e) {
			code = "1"; //중복이메일
		}catch (Exception e) {
			e.printStackTrace();
			code = "0"; //인증메일발송이 실패
		}
		 System.out.println("코드값 :" +code);
		
		 return code;
	}

	//비밀번호 찾기 폼으로 이동
	@RequestMapping(value="findPw.action")
	public String findPw()
	{
		System.out.println("비밀번호 찾기 폼 컨트롤러");
		return "SearchPw";
	}
	
	
	//비밀번호 변경시 이동
	//userEmail을 받아서 model객체에 담아서 전송
	@RequestMapping(value="changePw.action", method=RequestMethod.POST)
	public String changePw(Model model,String userEmail)
	{
		System.out.println("비밀번호를 변경할 이메일 : " + userEmail);
		model.addAttribute("userEmail",userEmail);
		return "changePwForm";
	}
	
	//비밀번호 변경 업데이트 
	@RequestMapping(value="updatePw.action", method=RequestMethod.POST)
	public String updatePw(Model model,UserVO user,String userEmail,String userPw,RedirectAttributes rd) throws Exception
	{
		System.out.println(userEmail); //들어온 이메일 값 확인
		System.out.println(userPw);
		
		user = new UserVO();
		
		user.setUserEmail(userEmail);
		user.setUserPw(userPw);
		
		System.out.println(user);
		
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		int result  = dao.updatepw(user);
				
		//정상 업데이트 되었는지 확인 
		System.out.println(result);
		if(result>0)
		{
			//리다이렉트를 이용할때 get방식으로 데이터를 넘기는 방법밖에 없지만,
			//일반적인 model에 담아서 전송하는 방식은 url뒤에 파라미터가 붙어 보안에 취약하지만
			//RedirectAttributes는 session을 통해 정보를 저장하기때문에 값이 안보이고 보안성도 증가 
			//addFlashAttribute()는 리다이렉트 직전 플래시에 저장하는 메소드다
			//리다이렉트 이후 소멸한다.
			
			rd.addFlashAttribute("msg", "비밀번호를 변경하였습니다. 로그인해주세요.");
			//model.addAttribute("msg", "비밀번호를 변경하였습니다.");
			return "redirect:main.action";
		}
		else
		{
			model.addAttribute("msg", "비밀번호 변경에 실패하였습니다");
			return "redirect:updatePw.action";
		}
		
	}
	
	//비밀번호 초기화
	@ResponseBody
	@RequestMapping("sendAuth.action" )
	public String sendEmail(String userEmail) throws Exception {
		String code = cm.setCode();
		
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		List<UserVO> user = dao.checkEmail(userEmail);
		
		System.out.println("이건코드 :" + code);
		
		try {
			if(user.size() < 0) {
				throw new ExistsEmailException(); //없는 이메일				 
			 }else {
				 MimeMessage msg = mailSender.createMimeMessage();
				 MimeMessageHelper msgHelper = new MimeMessageHelper(msg, true, "UTF-8");
				 
				 msgHelper.setFrom(username);
				 System.out.println(username);
				 msgHelper.setSubject("크레센도 비밀번호 초기화 인증번호 발송 메일입니다.");
				 
				 String htmlContent = "<h3 style=\"text-align: center\"><u>Find Your PassWord</u></h3><div align=\"center\"><br>"
						 +"<div align=\"center\"><img src=\"https://i.imgur.com/hiZDlxy.png\" style=\"width: 10%;\"><br></div>"
						 +" 본 메일은 발신 전용 메일입니다.<br> 아래의 인증번호를 정확히 입력해주세요. <br>"
						 +"인증번호 "+"<u><mark>"+ code +"</mark></u>"+"를 입력해주세요."+"</div>";
				 
				 msgHelper.setText(htmlContent, true);
				 
				 msgHelper.setTo(userEmail);
				 
				 mailSender.send(msg);
			 }
		 }catch (ExistsEmailException e) {
				code = "1"; //없는 이메일
			}catch (Exception e) {
				e.printStackTrace();
				code = "0"; //인증메일발송이 실패
			}
			 
			return code;
	}
	
	// 결제창 이동
	/*
	@RequestMapping(value="payok.action")
	public String payOkList()
	{
		System.out.println("결제 창 폼");
		return "payment";
		
	}
	*/
	
	// 이니시스 창 통해 결제 성공시
	
	
	//카카오 회원가입
	@RequestMapping(value="insertKaKao.action")
	public String insertKaKao(Model model,UserVO user,String userName,String userEmail,String userPw,String userProfile,RedirectAttributes rd)throws Exception
	{
		//주소 전화번호는 notnull임
		//인증날짜랑 가입날짜만 insert되는 시점에 sysdate로 넣어주기
		user.setUserName(userName);
		user.setUserPw(userPw);
		user.setUserEmail(userEmail);
		user.setUserProfile(userProfile);
		
		System.out.println("카카오 회원가입시 세팅할 유저 이름은 : " + user.getUserName());
		System.out.println("카카오 회원가입시 세팅할 유저 비번 : "+user.getUserPw());
		System.out.println("카카오 회원가입시 세팅할 유저 이메일은 : "+user.getUserEmail());
		System.out.println("카카오 회원가입시 세팅할 유저 프로필 경로 : " + user.getUserProfile());
		
		
		
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		int result = dao.kakaoinsert(user);
		System.out.println(result);
		
		if(result>0)
		{
			rd.addFlashAttribute("msg", "가입이 완료되었습니다 ID와PW를 확인해주세요!!");
			rd.addFlashAttribute("kuser", user);

			
			return "redirect:signupok.action"; 
										//나중에 회원가입 성공 페이지로 return 해줘서
									   //거기서 값 뽑아내기  c:if 로
		}
		else
		{
			model.addAttribute("msg", "회원가입에 실패하였습니다");
			return "redirect:main.action";
		}

	}
	
	//summernote 이미지 업로드

	
	/** 관리자 공지사항 이미지 등록
	 * @param request
	 * @param uploadFile
	 * @return path
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value="insertImage.action", method = RequestMethod.POST)
	public String insertImage(HttpServletRequest request, MultipartFile uploadFile) throws Exception 
	{
		System.out.println("이미지 업로드 컨트롤러 호출 성공");
		String path = sService.insertImage(uploadFile, request);
		
		System.out.println("컨트롤러 안 insertImage 반환 경로 :  : "  + path);
		
		
		return path;
	}
	
	

	//네이버 로그인
	@RequestMapping(value="/loginform.action",method= {RequestMethod.GET,RequestMethod.POST})
	public String loginForm(Model model,HttpSession session,HttpServletRequest request, HttpServletResponse response)
	{

		
		String referer = request.getHeader("referer");
		session.setAttribute("referer", referer);
		
		//네이버 아이디로 인증 URL을 생성하기 위해 naverLoginBO 클래스의getAuthorizationUrl호출
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		//https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
		//redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125

		//네이버
		model.addAttribute("url", naverAuthUrl);
		
		return "Login";
	}
	
	//네이버 로그인 성공시 callback호출 메소드
	@RequestMapping(value="nhome.action",method={RequestMethod.GET,RequestMethod.POST})
	public String ncallback(UserVO vo,Model model,@RequestParam String code,@RequestParam String state
			,RedirectAttributes rd,HttpSession session)throws Exception
	{
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		
		System.out.println("여기는 callback 부분입니다");
		OAuth2AccessToken oauthToken;
		
		oauthToken = naverLoginBO.getAccessToken(session, code, state);
		System.out.println("oauthToken값은 : " + oauthToken + "입니다.");

		//1.로그인 사용자 정보를 읽어온다
		apiResult = naverLoginBO.getUserProfile(oauthToken);
		//String 형식의 json데이터
		
		/*
		  	apiResult json 구조
		  	{"resultcode":"00",
		   	"message":"success",
			"response":
			{"id":"33666449","nickname":"SD","age":"20-29"
			,"gender":"M","email":"naver.com"
			,"name":"\uc2e0\ubc94\ud638"}}

		 */
		
		System.out.println("apiResult의 구조는 : "+apiResult);
		
		//2.String 형식인 apiResult를 json형태로 바꾼다.
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(apiResult);
		JSONObject jsonObj = (JSONObject) obj;
		
		System.out.println("파싱된 apiResult의 obj값 : " + obj);
		System.out.println("파싱된 obj의 jsonObj형태  obj값 : " + jsonObj);

		//3.데이터 파싱
		//Top레벨 단계 _response파싱
		JSONObject response_obj = (JSONObject)jsonObj.get("response");
		System.out.println("response_obj값 : "+response_obj);

		//response의 nickname값 파싱
		String userName= (String)response_obj.get("nickname");
		String userPw = (String)response_obj.get("id");
		String userEmail = (String)response_obj.get("email");
		String userProfile = (String)response_obj.get("profile_image");
	
		
		vo.setUserName(userName);
		vo.setUserPw(userPw);
		vo.setUserEmail(userEmail);
		vo.setUserProfile(userProfile);
		
		//4.파싱 닉네임 세션으로 저장
		//session.setAttribute("NaverName", userName);//세션 생성
		//session.setAttribute("NaverPw", userPw);
		
		
		List<UserVO> result2 = dao.checkEmail(vo.getUserEmail());
		
		if(result2.isEmpty())
		{
			System.out.println("이메일 중복 X ");
			int result = dao.naverinsert(vo);
			System.out.println("데이터 삽입 여부  :" + result);
			
			if(result>0)
			{
				System.out.println("데이터 삽입 성공");
				rd.addFlashAttribute("msg", "가입이 완료되었습니다. ID와 PW를 확인해주세요");
				model.addAttribute("NaverUser", vo);
				return "SignupOk";
			}
			else 
			{
				System.out.println("데이터 삽입 실패");
				rd.addFlashAttribute("msg", "가입에 실패하였습니다 다시 시도해주세요 " );
				return "redirect:signupok.action";
			}
		}
		else
		{
			System.out.println("이메일이 중복되었습니다.");
			rd.addFlashAttribute("msg", "크레센도 회원입니다.이메일 로그인을 해주세요!");
			return "redirect:loginform.action";
		}		
	}
	
}