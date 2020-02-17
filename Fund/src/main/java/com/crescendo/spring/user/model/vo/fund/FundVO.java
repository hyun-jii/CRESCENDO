package com.crescendo.spring.user.model.vo.fund;

public class FundVO
{
	private int fNum, userNum;			// 후원번호, 후원유저번호
	private String fName, fAddr, fTel;	// 후원자이름, 후원자주소, 후원자전화번호
	private String fDate, fInquire;		// 후원한날짜, 요청사항
	private int fCount;					// 후원한 리워드 수
	private int reNum;					// 리워드번호
	private int fZipcode;				// 후원자 우편번호
	
	
	// getter / setter
	public int getfNum()
	{
		return fNum;
	}
	public void setfNum(int fNum)
	{
		this.fNum = fNum;
	}
	public int getUserNum()
	{
		return userNum;
	}
	public void setUserNum(int userNum)
	{
		this.userNum = userNum;
	}
	public String getfName()
	{
		return fName;
	}
	public void setfName(String fName)
	{
		this.fName = fName;
	}
	public String getfAddr()
	{
		return fAddr;
	}
	public void setfAddr(String fAddr)
	{
		this.fAddr = fAddr;
	}
	public String getfTel()
	{
		return fTel;
	}
	public void setfTel(String fTel)
	{
		this.fTel = fTel;
	}
	public String getfDate()
	{
		return fDate;
	}
	public void setfDate(String fDate)
	{
		this.fDate = fDate;
	}
	public String getfInquire()
	{
		return fInquire;
	}
	public void setfInquire(String fInquire)
	{
		this.fInquire = fInquire;
	}
	public int getfCount()
	{
		return fCount;
	}
	public void setfCount(int fCount)
	{
		this.fCount = fCount;
	}
	public int getReNum()
	{
		return reNum;
	}
	public void setReNum(int reNum)
	{
		this.reNum = reNum;
	}
	public int getfZipcode()
	{
		return fZipcode;
	}
	public void setfZipcode(int fZipcode)
	{
		this.fZipcode = fZipcode;
	}
		
	
}
