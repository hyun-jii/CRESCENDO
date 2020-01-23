package com.crescendo.spring.util.controller;

import java.util.List;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crescendo.spring.common.util.model.vo.CommonMail;
import com.crescendo.spring.user.model.dao.IUserDAO;
import com.crescendo.spring.user.model.vo.UserVO;

@Controller
public class MailController
{
	@Autowired
	private IUserDAO dao;
	
	private CommonMail cm = new CommonMail();
	
	@Autowired
	private JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
	
	@Value("${mailSender.username}")
	private String username;
	//회원가입 인증
	//@param userEmail 
	//@return code
	
	@RequestMapping(value="authEmail.dr")
	public String userEmail(@RequestParam(value="userEmail")String userEmail) throws Exception 
	{
		
		System.out.println(userEmail);
		
		String code = cm.setCode(); //인증 번호 코드 입력
		
		System.out.println(code);
		
		List<UserVO> uList = dao.checkEmail(userEmail);//이메일 뽑아내기
		
		System.out.println(code);
		
		try {
			
			if(uList.size()>0) 
			{
				
			MimeMessage msg = mailSender.createMimeMessage();
			MimeMessageHelper msgHelper = new MimeMessageHelper(msg, true, "UTF-8");
			
			msgHelper.setFrom(username);
			System.out.println(username);
			
			msgHelper.setSubject("크레센도 회원가입 인증번호 발송 메일입니다");
			
			String htmlContent="<h3 style=\"text-align: center\"><u>Welcome! Do Dream</u></h3><div align=\"center\"><br>"
					+"<div align=\"center\"><img src=\"https://i.imgur.com/2wVLUA0.png\" style=\"width: 10%;\"><br></div>"
					+" 본 메일은 발신 전용 메일입니다.<br> 아래의 인증번호를 정확히 입력해주세요. <br>"
					+"인증번호 "+"<u><mark>"+ code +"</mark></u>"+" 를 입력해주세요"+"</div>";
			
			 
			 msgHelper.setText(htmlContent, true);
			 
			 msgHelper.setTo(userEmail);
			 			 
			 mailSender.send(msg);	
			}
		}catch (Exception e) {
			System.out.println(e.toString());
		}
	
		return code;
	}
	


}
