package com.crescendo.spring.user.model.dao.out;

import com.crescendo.spring.user.model.vo.out.UserOutVO;

public interface IUserOutDAO
{

	// 탈퇴 회원 수 조회
	public int outUserCount() throws Exception;
	
	// 회원탈퇴
	public int outUser(int userNum) throws Exception;
	
	// 회원탈퇴 가능한지 여부 카운트
	public int outCount(int userNum) throws Exception;
	
	// 회원탈퇴시 탈퇴테이블에 insert
	public int userOutInsert(UserOutVO vo) throws Exception;
}
