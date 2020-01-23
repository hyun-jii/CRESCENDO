/*===================================
 * ProjectListView1VO.jaca
 * -승인대기 목록 VO
 ==================================*/
package com.crescendo.spring.admin.model.vo.projectlistview2;

public class ProjectListView2VO
{
	

	/*
	 * SELECT
	 * PRJ_NUM,CA_NAME,PRJ_TITLE,PRJ_GOAL,MA_NAME,DE_CONTENT,FINAL_DATE,(FINAL_DATE
	 * + MA_PERIOD) AS "PROJECT_DATE" FROM VIEW_PRJ_DENY WHERE FINAL_STA='거절';
	 */
	

	private int prjNum, maPeriod, appNum,finalNum, userNum, deNum;				//프로젝트넘버, 프로젝트진행기간, 앱평가번호, 파이널번호
	private String caName, prjTitle, prjGoal, maName;			//카테고리이름,프로젝트 이름, 목표금액, 창작자이름
	private String deContent, finalDate, finalSta, projectDate; //거절사유, 승인여부날짜, 승인거절상태
	
	
	// getter/ setter 
	public int getPrjNum()
	{
		return prjNum;
	}
	public void setPrjNum(int prjNum)
	{
		this.prjNum = prjNum;
	}
	public int getMaPeriod()
	{
		return maPeriod;
	}
	public void setMaPeriod(int maPeriod)
	{
		this.maPeriod = maPeriod;
	}
	public String getCaName()
	{
		return caName;
	}
	public void setCaName(String caName)
	{
		this.caName = caName;
	}
	public String getPrjTitle()
	{
		return prjTitle;
	}
	public void setPrjTitle(String prjTitle)
	{
		this.prjTitle = prjTitle;
	}
	public String getPrjGoal()
	{
		return prjGoal;
	}
	public void setPrjGoal(String prjGoal)
	{
		this.prjGoal = prjGoal;
	}
	public String getMaName()
	{
		return maName;
	}
	public void setMaName(String maName)
	{
		this.maName = maName;
	}
	public String getDeContent()
	{
		return deContent;
	}
	public void setDeContent(String deContent)
	{
		this.deContent = deContent;
	}
	public String getFinalDate()
	{
		return finalDate;
	}
	public void setFinalDate(String finalDate)
	{
		this.finalDate = finalDate;
	}
	public String getFinalSta()
	{
		return finalSta;
	}
	public void setFinalSta(String finalSta)
	{
		this.finalSta = finalSta;
	}
	public String getProjectDate()
	{
		return projectDate;
	}
	public void setProjectDate(String projectDate)
	{
		this.projectDate = projectDate;
	}
	public int getAppNum()
	{
		return appNum;
	}
	public void setAppNum(int appNum)
	{
		this.appNum = appNum;
	}
	public int getFinalNum()
	{
		return finalNum;
	}
	public void setFinalNum(int finalNum)
	{
		this.finalNum = finalNum;
	}
	public int getUserNum()
	{
		return userNum;
	}
	public void setUserNum(int userNum)
	{
		this.userNum = userNum;
	}

	public int getDeNum() {
		return deNum;
	}
	public void setDeNum(int deNum)
	{

		this.deNum = deNum;
	}
	

	
}