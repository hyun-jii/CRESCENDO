package com.crescendo.spring.user.model.vo.letter;

public class LetterVO
{
	private int leNum, leSender, leReceiver;  //쪽지번호, 발신자 ,수신자
    private String leTitle, leContent;    			 //제목, 내용
	private String leDate, leReadDate;		     //작성일, 읽은날짜
    private String leRdelete, leSdelete;	         //받는이 쪽지삭제일, 보낸이 쪽지삭제일
    private int leId;											// 관리자가 사용자에게 쪽지보낼 시, 관리자보낸쪽지의 기본키가 찍힘
    
    // getter / setter
	public int getLeNum()
	{
		return leNum;
	}
	public void setLeNum(int leNum)
	{
		this.leNum = leNum;
	}
	public int getLeSender()
	{
		return leSender;
	}
	public void setLeSender(int leSender)
	{
		this.leSender = leSender;
	}
	public int getLeReceiver()
	{
		return leReceiver;
	}
	public void setLeReceiver(int leReceiver)
	{
		this.leReceiver = leReceiver;
	}
	public String getLeTitle()
	{
		return leTitle;
	}
	public void setLeTitle(String leTitle)
	{
		this.leTitle = leTitle;
	}
	public String getLeContent()
	{
		return leContent;
	}
	public void setLeContent(String leContent)
	{
		this.leContent = leContent;
	}
	public String getLeDate()
	{
		return leDate;
	}
	public void setLeDate(String leDate)
	{
		this.leDate = leDate;
	}
	public String getLeReadDate()
	{
		return leReadDate;
	}
	public void setLeReadDate(String leReadDate)
	{
		this.leReadDate = leReadDate;
	}
	public String getLeRdelete()
	{
		return leRdelete;
	}
	public void setLeRdelete(String leRdelete)
	{
		this.leRdelete = leRdelete;
	}
	public String getLeSdelete()
	{
		return leSdelete;
	}
	public void setLeSdelete(String leSdelete)
	{
		this.leSdelete = leSdelete;
	}
	public int getLeId()
	{
		return leId;
	}
	public void setLeId(int leId)
	{
		this.leId = leId;
	}
	 
	 
}