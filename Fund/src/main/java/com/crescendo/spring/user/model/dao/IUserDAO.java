package com.crescendo.spring.user.model.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.crescendo.spring.user.model.vo.UserVO;


public interface IUserDAO
{
	
	
	// 회원리스트 출력
	public List<UserVO> userList() throws Exception;
	// 회원정보 찾기
	public UserVO getReadData(String userEmail) throws Exception;

	// 중복 닉네임 찾기
	/*
	 * public int checkName(String userName) throws Exception;
	 */
	public List<UserVO> checkName(String userNamel)throws Exception;
	
	// 회원 정보 수정
	public int userUpdate(UserVO user) throws Exception;
	
	//이메일 중복검사 
	 public List<UserVO> checkEmail(String userEmail)throws Exception;

	//카카오 회원 insert
	public int kakaoinsert(UserVO user)throws Exception;
	
	//네이버 회원 insert
	public int naverinsert(UserVO user)throws Exception;
	
	//비밀번호 변경 update
	public int updatepw(UserVO user)throws Exception;
	
	// 회원가입 정보 Insert
	public int userInsert(UserVO user) throws Exception;
	
	//summernote 파일 이미지 업로드 
	public String insertImage(MultipartFile uploadFile, HttpServletRequest request)throws Exception;

	/*
	 * public String insertImage(MultipartFile uploadFile, HttpServletRequest
	 * request)throws Exception;
	 */

	
}