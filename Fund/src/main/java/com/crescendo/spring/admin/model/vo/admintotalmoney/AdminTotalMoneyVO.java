/*============================
 	TotalMoneyVO.java
 ============================*/
package com.crescendo.spring.admin.model.vo.admintotalmoney;

public class AdminTotalMoneyVO
{
	// 총수익 뽑는 쿼리문에 필요한 속성
	private int poMoney;
	private int pbNum;
	
	// 월별 수익 추사 속성
	private String poDate;
	
	// getter/setter속성
	public int getPoMoney()
	{
		return poMoney;
	}
	public void setPoMoney(int poMoney)
	{
		this.poMoney = poMoney;
	}
	public int getPbNum()
	{
		return pbNum;
	}
	public void setPbNum(int pbNum)
	{
		this.pbNum = pbNum;
	}
	public String getPoDate()
	{
		return poDate;
	}
	public void setPoDate(String poDate)
	{
		this.poDate = poDate;
	}
	
	
}

