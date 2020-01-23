package com.crescendo.spring.user.model.vo.project.progress;

public class ProgressVO
{
	private int proNum;				// 진행 번호
	private int finalNum;			// 등록 번호
	private String proSta, proShip;	// 진행상태, 배송상태
	private String proFinish;		// 마감날짜
	
	// getter / setter
	public int getProNum()
	{
		return proNum;
	}
	public void setProNum(int proNum)
	{
		this.proNum = proNum;
	}
	public int getFinalNum()
	{
		return finalNum;
	}
	public void setFinalNum(int finalNum)
	{
		this.finalNum = finalNum;
	}
	public String getProSta()
	{
		return proSta;
	}
	public void setProSta(String proSta)
	{
		this.proSta = proSta;
	}
	public String getProShip()
	{
		return proShip;
	}
	public void setProShip(String proShip)
	{
		this.proShip = proShip;
	}
	public String getProFinish()
	{
		return proFinish;
	}
	public void setProFinish(String proFinish)
	{
		this.proFinish = proFinish;
	}
	
	
	

}
