/*=================================
 	 ProjectListView3VO.java
 =================================*/

package com.crescendo.spring.admin.model.vo.projectlistview3;

public class ProjectListView3VO
{
	private int prjNum, prjGoal, poMoney, userNum; 			 // 프로젝트번호, 목표금액, 결재금액
	private String caName, prjTitle;				 // 카테고리이름, 프로젝트제목
	private String finalDate, maPeriod;				 // 승인여부날짜, 진행기간
	private String maName, maAccount;				 // 창작자이름, 계좌번호
	private int remainDay;							 // 남은일수
	private String finalDay;					     // 마감날짜
	private String maBank;							 // 은행명
	private String percent;						 	// 총후원금액
	private String proSta;							// 프로젝트 진행상황
	private int proNum;

	
	// getter / setter 구성
	public int getPrjNum()
	{
		return prjNum;
	}
	public void setPrjNum(int prjNum)
	{
		this.prjNum = prjNum;
	}
	public int getPrjGoal()
	{
		return prjGoal;
	}
	public void setPrjGoal(int prjGoal)
	{
		this.prjGoal = prjGoal;
	}
	public int getPoMoney()
	{
		return poMoney;
	}
	public void setPoMoney(int poMoney)
	{
		this.poMoney = poMoney;
	}
	public String getCaName()
	{
		return caName;
	}
	public void setCaName(String caName)
	{
		this.caName = caName;
	}
	public String getPrjTitle()
	{
		return prjTitle;
	}
	public void setPrjTitle(String prjTitle)
	{
		this.prjTitle = prjTitle;
	}
	public String getFinalDate()
	{
		return finalDate;
	}
	public void setFinalDate(String finalDate)
	{
		this.finalDate = finalDate;
	}
	public String getMaPeriod()
	{
		return maPeriod;
	}
	public void setMaPeriod(String maPeriod)
	{
		this.maPeriod = maPeriod;
	}
	public String getMaName()
	{
		return maName;
	}
	public void setMaName(String maName)
	{
		this.maName = maName;
	}
	public String getMaAccount()
	{
		return maAccount;
	}
	public void setMaAccount(String maAccount)
	{
		this.maAccount = maAccount;
	}
	public int getRemainDay()
	{
		return remainDay;
	}
	public void setRemainDay(int remainDay)
	{
		this.remainDay = remainDay;
	}
	public String getFinalDay()
	{
		return finalDay;
	}
	public void setFinalDay(String finalDay)
	{
		this.finalDay = finalDay;
	}
	public String getMaBank()
	{
		return maBank;
	}
	public void setMaBank(String maBank)
	{
		this.maBank = maBank;
	}
	public String getPercent()
	{
		return percent;
	}
	public void setPercent(String percent)
	{
		this.percent = percent;
	}
	public int getProNum()
	{
		return proNum;
	}
	public void setProNum(int proNum)
	{
		this.proNum = proNum;
	}
	public String getProSta()
	{
		return proSta;
	}
	public void setProSta(String proSta)
	{
		this.proSta = proSta;
	}
	public int getUserNum()
	{
		return userNum;
	}
	public void setUserNum(int userNum)
	{
		this.userNum = userNum;
	}

	
}
