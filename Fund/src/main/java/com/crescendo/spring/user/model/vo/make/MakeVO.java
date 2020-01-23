package com.crescendo.spring.user.model.vo.make;

public class MakeVO
{
    private int poNum, userNum, proNum, remainDay; 					//결제완료번호, 유저번호, 진행프로젝트번호, 남은기간
    private int poMoney, percent, totalMoney, supporter; 		    //결제금액, 달성률, 총모금액, 후원자수
    private String finalSta, prjTitle, prjImg, maName, proSta;      //승인거절상태, 프로젝트제목, 프로젝트이미지, 창작자이름, 프로젝트 상태 
    private String proShip, proFinish, userName, poSta, userTel;    //배송상태, 배송완료날짜, 후원자이름, 결제상태, 유저 핸드폰번호
    private String userAddr, reContent, fInquire ,finalDate;        //유저주소, 리워드내용, 기타문의사항, 승인여부날짜
    private String  evaStandard, prjDate;     						// 검토기준, 프로젝트생성일
    private int maNum, prjNum, appNum;				   						//창작자번호, 프로젝트번호,app평가번호
    private String userEmail;										// 후원자 이메일
    
    public int getAppNum()
    {
		return appNum;
	}
	public void setAppNum(int appNum)
	{
		this.appNum = appNum;
	}
    public int getPoNum()
	{
		return poNum;
	}
	public void setPoNum(int poNum)
	{
		this.poNum = poNum;
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
	public int getRemainDay()
	{
		return remainDay;
	}
	public void setRemainDay(int remainDay)
	{
		this.remainDay = remainDay;
	}
	public int getPoMoney()
	{
		return poMoney;
	}
	public void setPoMoney(int poMoney)
	{
		this.poMoney = poMoney;
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
	public int getSupporter()
	{
		return supporter;
	}
	public void setSupporter(int supporter)
	{
		this.supporter = supporter;
	}
	public String getFinalSta()
	{
		return finalSta;
	}
	public void setFinalSta(String finalSta)
	{
		this.finalSta = finalSta;
	}
	public String getPrjTitle()
	{
		return prjTitle;
	}
	public void setPrjTitle(String prjTitle)
	{
		this.prjTitle = prjTitle;
	}
	public String getPrjImg()
	{
		return prjImg;
	}
	public void setPrjImg(String prjImg)
	{
		this.prjImg = prjImg;
	}
	public String getMaName()
	{
		return maName;
	}
	public void setMaName(String maName)
	{
		this.maName = maName;
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
	public String getUserName()
	{
		return userName;
	}
	public void setUserName(String userName)
	{
		this.userName = userName;
	}
	public String getPoSta()
	{
		return poSta;
	}
	public void setPoSta(String poSta)
	{
		this.poSta = poSta;
	}
	public String getUserTel()
	{
		return userTel;
	}
	public void setUserTel(String userTel)
	{
		this.userTel = userTel;
	}
	public String getUserAddr()
	{
		return userAddr;
	}
	public void setUserAddr(String userAddr)
	{
		this.userAddr = userAddr;
	}
	public String getReContent()
	{
		return reContent;
	}
	public void setReContent(String reContent)
	{
		this.reContent = reContent;
	}
	public String getfInquire()
	{
		return fInquire;
	}
	public void setfInquire(String fInquire)
	{
		this.fInquire = fInquire;
	}
	public String getFinalDate()
	{
		return finalDate;
	}
	public void setFinalDate(String finalDate)
	{
		this.finalDate = finalDate;
	}
	public String getEvaStandard()
	{
		return evaStandard;
	}
	public void setEvaStandard(String evaStandard)
	{
		this.evaStandard = evaStandard;
	}
	public String getPrjDate()
	{
		return prjDate;
	}
	public void setPrjDate(String prjDate)
	{
		this.prjDate = prjDate;
	}
	public int getMaNum()
	{
		return maNum;
	}
	public void setMaNum(int maNum)
	{
		this.maNum = maNum;
	}
	public int getPrjNum()
	{
		return prjNum;
	}
	public void setPrjNum(int prjNum)
	{
		this.prjNum = prjNum;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	


}


