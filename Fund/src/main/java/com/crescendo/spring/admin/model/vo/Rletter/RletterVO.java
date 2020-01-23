package com.crescendo.spring.admin.model.vo.Rletter;

public class RletterVO
{
	private int lrNum, userNum, adminNum; //받은쪽지번호, 발신자, 관리자번호
	private String lrTitle, lrContent;      //제목, 내용
	private String lrDate, lrReadDate;   //받은날짜, 읽은날짜
	private String lrSdelete, lrRdelete;  //보낸이쪽지삭제일, 받는이쪽지삭제일
	private int lrId;					// 사용자가 관리자에게 쪽지 보냈을 경우 사용자 보낸 쪽지의 기본키가 찍힘
	
	// getter / setter
	public int getLrNum()
	{
		return lrNum;
	}
	public void setLrNum(int lrNum)
	{
		this.lrNum = lrNum;
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
	public String getLrTitle()
	{
		return lrTitle;
	}
	public void setLrTitle(String lrTitle)
	{
		this.lrTitle = lrTitle;
	}
	public String getLrContent()
	{
		return lrContent;
	}
	public void setLrContent(String lrContent)
	{
		this.lrContent = lrContent;
	}
	public String getLrDate()
	{
		return lrDate;
	}
	public void setLrDate(String lrDate)
	{
		this.lrDate = lrDate;
	}
	public String getLrReadDate()
	{
		return lrReadDate;
	}
	public void setLrReadDate(String lrReadDate)
	{
		this.lrReadDate = lrReadDate;
	}
	public String getLrSdelete()
	{
		return lrSdelete;
	}
	public void setLrSdelete(String lrSdelete)
	{
		this.lrSdelete = lrSdelete;
	}
	public String getLrRdelete()
	{
		return lrRdelete;
	}
	public void setLrRdelete(String lrRdelete)
	{
		this.lrRdelete = lrRdelete;
	}
	public int getLrId()
	{
		return lrId;
	}
	public void setLrId(int lrId)
	{
		this.lrId = lrId;
	}
	
	
}
