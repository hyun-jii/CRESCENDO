package com.crescendo.spring.user.model.dao.log;

public interface ILogDAO
{
	// 회원 로그 관리
	public int insertLog(int userNum) throws Exception;
	
	// 일자별 방문자 수
	public int dayCount(String day) throws Exception;
	
	// 월별 방문자 수
	public int monthCount(String month) throws Exception;
	
	// 연도별 방문자수
	public int yearCount(String year) throws Exception;
	
	// 프로젝트별 해당 창작자 마지막 로그인 날짜
	public String lastLogin(int userNum) throws Exception;
}
