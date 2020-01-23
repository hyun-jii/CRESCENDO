/*============================
	CategoryVO.java
=============================*/

package com.crescendo.spring.admin.model.vo.category;

public class CategoryVO
{
	private int caNum, adminNum;		// 카테고리번호, 관리자번호
	private String caName, caDate;		// 카테고리 이름, 카테고리 등록 날짜
	
	
	// getter/setter구성
	public int getCaNum()
	{
		return caNum;
	}
	public void setCaNum(int caNum)
	{
		this.caNum = caNum;
	}
	public int getAdminNum()
	{
		return adminNum;
	}
	public void setAdminNum(int adminNum)
	{
		this.adminNum = adminNum;
	}
	public String getCaName()
	{
		return caName;
	}
	public void setCaName(String caName)
	{
		this.caName = caName;
	}
	public String getCaDate()
	{
		return caDate;
	}
	public void setCaDate(String caDate)
	{
		this.caDate = caDate;
	}
	
	

	
	
}
