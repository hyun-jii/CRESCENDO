/*============================
 	PayBackVO.java
=============================*/
package com.crescendo.spring.admin.model.vo.payback;

public class PayBackVO
{
	
	
	private int pbNum, poMoney, poNum;								// 환불번호, 결제금액,결제완료번호
	private String prjTitle,userName,poDate	;				// 프로젝트이름, 유저이름, 결제완료일자
	private String reName, fName;							// 리워드이름, 배송받는이름,
	private String fTel, fAddr, pbContent;					// 전화번호, 배송지, 환불사유
	
	// getter/setter구성
	
	public int getPoNum()
	{
		return poNum;
	}
	
	public void setPoNum(int poNum)
	{
		this.poNum = poNum;
	}
	
	public int getPbNum()
	{
		return pbNum;
	}
	public void setPbNum(int pbNum)
	{
		this.pbNum = pbNum;
	}
	public int getPoMoney()
	{
		return poMoney;
	}
	public void setPoMoney(int poMoney)
	{
		this.poMoney = poMoney;
	}
	public String getPrjTitle()
	{
		return prjTitle;
	}
	public void setPrjTitle(String prjTitle)
	{
		this.prjTitle = prjTitle;
	}
	public String getUserName()
	{
		return userName;
	}
	public void setUserName(String userName)
	{
		this.userName = userName;
	}
	public String getPoDate()
	{
		return poDate;
	}
	public void setPoDate(String poDate)
	{
		this.poDate = poDate;
	}
	public String getReName()
	{
		return reName;
	}
	public void setReName(String reName)
	{
		this.reName = reName;
	}
	public String getfName()
	{
		return fName;
	}
	public void setfName(String fName)
	{
		this.fName = fName;
	}
	public String getfTel()
	{
		return fTel;
	}
	public void setfTel(String fTel)
	{
		this.fTel = fTel;
	}
	public String getfAddr()
	{
		return fAddr;
	}
	public void setfAddr(String fAddr)
	{
		this.fAddr = fAddr;
	}
	public String getPbContent()
	{
		return pbContent;
	}
	public void setPbContent(String pbContent)
	{
		this.pbContent = pbContent;
	}
	
	
}
