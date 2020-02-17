package com.crescendo.spring.user.model.vo.project.app;

public class AppVO
{
	private int appNum;		// 앱평가 번호
	private int maNum;		// 프로젝트 최종등록 번호
	private int evaNum;		// 프로젝트 평가 번호
	
	// getter / setter
	public int getAppNum()
	{
		return appNum;
	}
	public void setAppNum(int appNum)
	{
		this.appNum = appNum;
	}
	public int getMaNum()
	{
		return maNum;
	}
	public void setMaNum(int maNum)
	{
		this.maNum = maNum;
	}
	public int getEvaNum()
	{
		return evaNum;
	}
	public void setEvaNum(int evaNum)
	{
		this.evaNum = evaNum;
	}
	
	
}
