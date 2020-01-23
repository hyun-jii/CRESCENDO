package com.crescendo.spring.user.model.vo.project.step1;

public class Step1VO
{
	// 주요 변수 선언
	private int prjNum;
	private int caNum;
	private int userNum;											// 카테고리번호
	private String prjTitle, prjSname;							// 프로젝트 제목, 프로젝트 요약, 프로젝트 내용등록 번호, 유저번호
	private int prjGoal;										// 목표금액입력
	private String prjImg, prjTag, prjContent;					// 대표이미지, 프로젝트 해시태그, 프로젝트 내용
	private String prjDate;
	
	
	// getter / setter
	public int getCaNum()
	{
		return caNum;
	}
	public void setCaNum(int caNum)
	{
		this.caNum = caNum;
	}
	public int getPrjNum()
	{
		return prjNum;
	}
	public void setPrjNum(int prjNum)
	{
		this.prjNum = prjNum;
	}
	public int getUserNum()
	{
		return userNum;
	}
	public void setUserNum(int userNum)
	{
		this.userNum = userNum;
	}
	public String getPrjTitle()
	{
		return prjTitle;
	}
	public void setPrjTitle(String prjTitle)
	{
		this.prjTitle = prjTitle;
	}
	public String getPrjSname()
	{
		return prjSname;
	}
	public void setPrjSname(String prjSname)
	{
		this.prjSname = prjSname;
	}
	public int getPrjGoal()
	{
		return prjGoal;
	}
	public void setPrjGoal(int prjGoal)
	{
		this.prjGoal = prjGoal;
	}
	public String getPrjImg()
	{
		return prjImg;
	}
	public void setPrjImg(String prjImg)
	{
		this.prjImg = prjImg;
	}
	public String getPrjTag()
	{
		return prjTag;
	}
	public void setPrjTag(String prjTag)
	{
		this.prjTag = prjTag;
	}
	public String getPrjContent()
	{
		return prjContent;
	}
	public void setPrjContent(String prjContent)
	{
		this.prjContent = prjContent;
	}
	public String getPrjDate()
	{
		return prjDate;
	}
	public void setPrjDate(String prjDate)
	{
		this.prjDate = prjDate;
	}			
		
	
}
