package com.crescendo.spring.user.model.vo.support;

public class SupportVO
{
    private String fDate, prjTitle, reContent, userName;    								//후원날짜, 프로젝트명, 리워드내용, 유저이름
    private int fNum, reNum, userNum, poMoney, poNum, proNum;				//후원번호, 리워드번호, 유저번호, 후원금액, 진행번호, 결제완료번호
    private int fCount;																						//선택한수량
    private String poSta;													//결제상태
    
	public String getPoSta() {
		return poSta;
	}
	public void setPoSta(String poSta) {
		this.poSta = poSta;
	}
	public int getfCount()
	{
		return fCount;
	}
	public int getPoNum()
	{
		return poNum;
	}
	public void setPoNum(int poNum)
	{
		this.poNum = poNum;
	}
	public int getProNum()
	{
		return proNum;
	}
	public void setProNum(int proNum)
	{
		this.proNum = proNum;
	}
	public void setfCount(int fCount)
	{
		this.fCount = fCount;
	}
	public String getfDate()
	{
		return fDate;
	}
	public void setfDate(String fDate)
	{
		this.fDate = fDate;
	}
	public String getPrjTitle()
	{
		return prjTitle;
	}
	public void setPrjTitle(String prjTitle)
	{
		this.prjTitle = prjTitle;
	}
	public String getReContent()
	{
		return reContent;
	}
	public void setReContent(String reContent)
	{
		this.reContent = reContent;
	}
	public String getUserName()
	{
		return userName;
	}
	public void setUserName(String userName)
	{
		this.userName = userName;
	}
	public int getfNum()
	{
		return fNum;
	}
	public void setfNum(int fNum)
	{
		this.fNum = fNum;
	}
	public int getReNum()
	{
		return reNum;
	}
	public void setReNum(int reNum)
	{
		this.reNum = reNum;
	}
	public int getUserNum()
	{
		return userNum;
	}
	public void setUserNum(int userNum)
	{
		this.userNum = userNum;
	}
	public int getPoMoney()
	{
		return poMoney;
	}
	public void setPoMoney(int poMoney)
	{
		this.poMoney = poMoney;
	}
}
