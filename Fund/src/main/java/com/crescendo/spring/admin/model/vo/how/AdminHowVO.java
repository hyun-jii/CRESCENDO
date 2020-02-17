package com.crescendo.spring.admin.model.vo.how;


public class AdminHowVO
{
	private int howNum, adminNum;					// 이용방법 번호, 관리자 번호		
	private String howDate, howContent, howTitle; // 이용방법 날짜, 이용방법 내용, 이용방법 제목
	
	// getter / setter 구성
	public int getHowNum()
	{
		return howNum;
	}
	public void setHowNum(int howNum)
	{
		this.howNum = howNum;
	}
	public int getAdminNum()
	{
		return adminNum;
	}
	public void setAdminNum(int adminNum)
	{
		this.adminNum = adminNum;
	}
	public String getHowDate()
	{
		return howDate;
	}
	public void setHowDate(String howDate)
	{
		this.howDate = howDate;
	}
	public String getHowContent()
	{
		return howContent;
	}
	public void setHowContent(String howContent)
	{
		this.howContent = howContent;
	}
	public String getHowTitle()
	{
		return howTitle;
	}
	public void setHowTitle(String howTitle)
	{
		this.howTitle = howTitle;
	}		
	
	

	
	
	
	

}