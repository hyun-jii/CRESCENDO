package com.crescendo.spring.admin.model.dao;


import com.crescendo.spring.admin.model.vo.AdminVO;


public interface IAdminDAO
{
	// 관리자 정보 찾기
	public AdminVO getReadData(String adminEmail) throws Exception;
	
	// 총 회원수 조회
	public int userCount() throws Exception;
	
	// 신규 회원수 조회
	public int newUserCount() throws Exception;
}