package com.crescendo.spring.user.model.vo.log;

public class LogVO
{
	private int logNum;		// 로그번호
	private int userNum;	// 유저번호
	private String logDate;	// 로그인일자시간
	
	// getter / setter
	public int getLogNum()
	{
		return logNum;
	}
	public void setLogNum(int logNum)
	{
		this.logNum = logNum;
	}
	public int getUserNum()
	{
		return userNum;
	}
	public void setUserNum(int userNum)
	{
		this.userNum = userNum;
	}
	public String getLogDate()
	{
		return logDate;
	}
	public void setLogDate(String logDate)
	{
		this.logDate = logDate;
	}
	
	

}
