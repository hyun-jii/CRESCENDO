/*=====================================
  			NoticeVO.java
======================================= */
package com.crescendo.spring.admin.model.vo.notice;

public class NoticeVO
{
	private int noNum, adminNum; 		// 공지사항 글번호, 관리자번호
	private String noTitle, noContent;	// 공지사항 제목, 공지사항 글
	private String noDate;				// 공지사항 입력 날짜
	
	// getter/setter구성
	public int getNoNum()
	{
		return noNum;
	}
	public void setNoNum(int noNum)
	{
		this.noNum = noNum;
	}
	public int getAdminNum()
	{
		return adminNum;
	}
	public void setAdminNum(int adminNum)
	{
		this.adminNum = adminNum;
	}
	public String getNoTitle()
	{
		return noTitle;
	}
	public void setNoTitle(String noTitle)
	{
		this.noTitle = noTitle;
	}
	public String getNoContent()
	{
		return noContent;
	}
	public void setNoContent(String noContent)
	{
		this.noContent = noContent;
	}
	public String getNoDate()
	{
		return noDate;
	}
	public void setNoDate(String noDate)
	{
		this.noDate = noDate;
	}
	
	
	
	
}