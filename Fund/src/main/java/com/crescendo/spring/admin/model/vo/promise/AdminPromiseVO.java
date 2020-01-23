package com.crescendo.spring.admin.model.vo.promise;

public class AdminPromiseVO
{
	private int proNum, adminNum; //이용약관번호, 관리자번호
	private String proRules, proService, proUserInfo; // 총칙, 서비스이용, 회원정보의관리
	private String proDuty, proCreation, proSupport, proEtc; //권리및의무, 프로젝트생성, 후원의 신청및 접수
	private String proDate; //등록일자
	public int getProNum()
	{
		return proNum;
	}
	public void setProNum(int proNum)
	{
		this.proNum = proNum;
	}
	public int getAdminNum()
	{
		return adminNum;
	}
	public void setAdminNum(int adminNum)
	{
		this.adminNum = adminNum;
	}
	public String getProRules()
	{
		return proRules;
	}
	public void setProRules(String proRules)
	{
		this.proRules = proRules;
	}
	public String getProService()
	{
		return proService;
	}
	public void setProService(String proService)
	{
		this.proService = proService;
	}
	public String getProUserInfo()
	{
		return proUserInfo;
	}
	public void setProUserInfo(String proUserInfo)
	{
		this.proUserInfo = proUserInfo;
	}
	public String getProDuty()
	{
		return proDuty;
	}
	public void setProDuty(String proDuty)
	{
		this.proDuty = proDuty;
	}
	public String getProCreation()
	{
		return proCreation;
	}
	public void setProCreation(String proCreation)
	{
		this.proCreation = proCreation;
	}
	public String getProSupport()
	{
		return proSupport;
	}
	public void setProSupport(String proSupport)
	{
		this.proSupport = proSupport;
	}
	public String getProEtc()
	{
		return proEtc;
	}
	public void setProEtc(String proEtc)
	{
		this.proEtc = proEtc;
	}
	public String getProDate()
	{
		return proDate;
	}
	public void setProDate(String proDate)
	{
		this.proDate = proDate;
	}
    
   
	
}