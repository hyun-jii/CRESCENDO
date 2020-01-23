package com.crescendo.spring.admin.model.vo.Sletter;

public class SletterVO
{
	private int lsNum, userNum, adminNum; //보낸쪽지번호, 수신자, 발신자
	private String lsTitle, lsContent;             //제목, 내용
	private String lsDate;							   //읽은날짜
	private String lsSdelete, lsRdelete;		   //보낸이쪽지삭제일, 받는이쪽지삭제일
	
	public int getLsNum()
	{
		return lsNum;
	}
	public void setLsNum(int lsNum)
	{
		this.lsNum = lsNum;
	}
	public int getUserNum()
	{
		return userNum;
	}
	public void setUserNum(int userNum)
	{
		this.userNum = userNum;
	}
	public int getAdminNum()
	{
		return adminNum;
	}
	public void setAdminNum(int adminNum)
	{
		this.adminNum = adminNum;
	}
	public String getLsTitle()
	{
		return lsTitle;
	}
	public void setLsTitle(String lsTitle)
	{
		this.lsTitle = lsTitle;
	}
	public String getLsContent()
	{
		return lsContent;
	}
	public void setLsContent(String lsContent)
	{
		this.lsContent = lsContent;
	}
	public String getLsDate()
	{
		return lsDate;
	}
	public void setLsDate(String lsDate)
	{
		this.lsDate = lsDate;
	}
	public String getLsSdelete()
	{
		return lsSdelete;
	}
	public void setLsSdelete(String lsSdelete)
	{
		this.lsSdelete = lsSdelete;
	}
	public String getLsRdelete()
	{
		return lsRdelete;
	}
	public void setLsRdelete(String lsRdelete)
	{
		this.lsRdelete = lsRdelete;
	}
}