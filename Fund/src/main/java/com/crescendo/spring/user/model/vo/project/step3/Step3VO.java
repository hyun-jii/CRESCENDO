/*====================
 	Step3VO.java
 ====================*/
package com.crescendo.spring.user.model.vo.project.step3;

public class Step3VO
{
	
	private int reNum, prjNum,reMoney,reLimit;		// 리워드넘버, 프로젝트넘버, 리워드금액, 리워드수량
	private String reName,reContent,reDate;			// 리워드이름, 리워드내용, 리워드등록날짜
	
	// getter/setter 구성
	public int getReNum()
	{
		return reNum;
	}
	public void setReNum(int reNum)
	{
		this.reNum = reNum;
	}
	public int getPrjNum()
	{
		return prjNum;
	}
	public void setPrjNum(int prjNum)
	{
		this.prjNum = prjNum;
	}
	public int getReMoney()
	{
		return reMoney;
	}
	public void setReMoney(int reMoney)
	{
		this.reMoney = reMoney;
	}
	public int getReLimit()
	{
		return reLimit;
	}
	public void setReLimit(int reLimit)
	{
		this.reLimit = reLimit;
	}
	public String getReName()
	{
		return reName;
	}
	public void setReName(String reName)
	{
		this.reName = reName;
	}
	public String getReContent()
	{
		return reContent;
	}
	public void setReContent(String reContent)
	{
		this.reContent = reContent;
	}
	public String getReDate()
	{
		return reDate;
	}
	public void setReDate(String reDate)
	{
		this.reDate = reDate;
	}
	
	
	 
}
