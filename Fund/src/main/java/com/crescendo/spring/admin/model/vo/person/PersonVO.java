package com.crescendo.spring.admin.model.vo.person;

public class PersonVO
{
	private int pNum, adminNum;				// 개인정보처리방침번호, 관리자번호
	private String pDate;						// 등록일자
	private String pContent;					// 개인정보처리방침내용
	
	
	public int getpNum()
	{
		return pNum;
	}
	public void setpNum(int pNum)
	{
		this.pNum = pNum;
	}
	
	
	public int getAdminNum()
	{
		return adminNum;
	}
	public void setAdminNum(int adminNum)
	{
		this.adminNum = adminNum;
	}
	public String getpDate()
	{
		return pDate;
	}
	public void setpDate(String pDate)
	{
		this.pDate = pDate;
	}
	public String getpContent()
	{
		return pContent;
	}
	public void setpContent(String pContent)
	{
		this.pContent = pContent;
	}
	
	
	
	
	
}