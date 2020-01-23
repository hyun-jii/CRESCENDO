package com.crescendo.spring.admin.model.vo;

public class AdminVO
{
	 private int adminNum;					// 관리자 번호
	 private String adminEmail, adminPw;	// 관리자 이메일, 관리자 비밀번호
	 private String adminDate;				// 관리자 등록날짜
	 
	// getter / setter
	public int getAdminNum()
	{
		return adminNum;
	}
	public void setAdminNum(int adminNum)
	{
		this.adminNum = adminNum;
	}
	public String getAdminEmail()
	{
		return adminEmail;
	}
	public void setAdminEmail(String adminEmail)
	{
		this.adminEmail = adminEmail;
	}
	public String getAdminPw()
	{
		return adminPw;
	}
	public void setAdminPw(String adminPw)
	{
		this.adminPw = adminPw;
	}
	public String getAdminDate()
	{
		return adminDate;
	}
	public void setAdminDate(String adminDate)
	{
		this.adminDate = adminDate;
	}
	 
}