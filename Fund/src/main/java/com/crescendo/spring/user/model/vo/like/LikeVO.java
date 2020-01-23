package com.crescendo.spring.user.model.vo.like;

public class LikeVO
{
    private int userNum, proNum;      					 //유저번호, 진행프로젝트 번호
    private String userName, likeDate; 				 	 //유저이름, 찜한날짜
    private String prjTitle, maName, prjImg;      		 //프로젝트제목, 창작자이름
    private int percent, totalMoney, remainDay;     //달성률, 총수익, 남은일자
    
    
    public String getPrjTitle()
	{
		return prjTitle;
	}
	public void setPrjTitle(String prjTitle)
	{
		this.prjTitle = prjTitle;
	}
	public String getMaName()
	{
		return maName;
	}
	public void setMaName(String maName)
	{
		this.maName = maName;
	}
	public String getPrjImg()
	{
		return prjImg;
	}
	public void setPrjImg(String prjImg)
	{
		this.prjImg = prjImg;
	}
	public int getPercent()
	{
		return percent;
	}
	public void setPercent(int percent)
	{
		this.percent = percent;
	}
	public int getTotalMoney()
	{
		return totalMoney;
	}
	public void setTotalMoney(int totalMoney)
	{
		this.totalMoney = totalMoney;
	}
	public int getRemainDay()
	{
		return remainDay;
	}
	public void setRemainDay(int remainDay)
	{
		this.remainDay = remainDay;
	}
	
    public int getUserNum()
	{
		return userNum;
	}
	public void setUserNum(int userNum)
	{
		this.userNum = userNum;
	}
	public int getProNum()
	{
		return proNum;
	}
	public void setProNum(int proNum)
	{
		this.proNum = proNum;
	}
	public String getUserName()
	{
		return userName;
	}
	public void setUserName(String userName)
	{
		this.userName = userName;
	}
	public String getLikeDate()
	{
		return likeDate;
	}
	public void setLikeDate(String likeDate)
	{
		this.likeDate = likeDate;
	}
	
}