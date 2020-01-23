package com.crescendo.spring.admin.model.vo.projectlistview1;

public class ProjectListView1VO {
	
	
	/*
	 * --○ 승인대기 프로젝트 목록 출력 조인 SELECT A.PRJ_NUM, A.PRJ_TITLE, A.PRJ_GOAL, A.MA_NAME,
	 * A.MA_DATE, B.USER_TEL FROM STEP1 A INNER JOIN TBL_USER B ON A.USER_NUM =
	 * B.USER_NUM INNER JOIN TBL_APP C ON A.MA_NUM = C.MA_NUM ORDER BY 1;
	 * 
	 * 
	 */
	
	private int appNum, prjNum, prjGoal, maNum, evaNum, userNum;			// 평가 번호, 목표금액
	private String prjTitle, maName;	// 프로젝트 제목, 창작자 이름
	private String maDate, userTel;		// 승인신청날짜, 창작자 휴대폰 번호
	private String evaStandard;			// 검토기준, 
	private String projectDate;	// 마감일, 
	public int getAppNum()
	{
		return appNum;
	}
	public void setAppNum(int appNum)
	{
		this.appNum = appNum;
	}
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
	public String getMaDate()
	{
		return maDate;
	}
	public void setMaDate(String maDate)
	{
		this.maDate = maDate;
	}
	public String getUserTel()
	{
		return userTel;
	}
	public void setUserTel(String userTel)
	{
		this.userTel = userTel;
	}
	public String getEvaStandard()
	{
		return evaStandard;
	}
	public void setEvaStandard(String evaStandard)
	{
		this.evaStandard = evaStandard;
	}
	public String getProjectDate()
	{
		return projectDate;
	}
	public void setProjectDate(String projectDate)
	{
		this.projectDate = projectDate;
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