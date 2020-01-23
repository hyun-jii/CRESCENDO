

package com.crescendo.spring.admin.model.vo.faq;

public class FaqVO {

	private int hNum,adminNum;
	private String hTitle;
	private String hContent;
	private String hDate;
	
	
	//getter/setter구성
	public int gethNum()
	{
		return hNum;
	}
	public void sethNum(int hNum)
	{
		this.hNum = hNum;
	}
	public int getAdminNum()
	{
		return adminNum;
	}
	public void setAdminNum(int adminNum)
	{
		this.adminNum = adminNum;
	}
	public String gethTitle()
	{
		return hTitle;
	}
	public void sethTitle(String hTitle)
	{
		this.hTitle = hTitle;
	}
	public String gethContent()
	{
		return hContent;
	}
	public void sethContent(String hContent)
	{
		this.hContent = hContent;
	}
	public String gethDate()
	{
		return hDate;
	}
	public void sethDate(String hDate)
	{
		this.hDate = hDate;
	}
	
	
	
	
	
	
	
	
}