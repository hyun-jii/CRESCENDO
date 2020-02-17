package com.crescendo.spring.user.model.vo.project.step4;

public class Step4VO
{
	private int maNum,prjNum;		// 최종접수번호, 프로젝트내용등록번호
	private String maName, maInfo;	// 창작자이름, 창작자 소개글
	private String maAcname, maBank;// 예금주, 은행명
	private String maAccount,maDate;// 계좌번호, 최종접수일자
	private int maPeriod;			// 프로젝트진행기간
	private String maPredict;		// 리워드 배송일자
	
	// getter /setter 구성
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
	public String getMaName()
	{
		return maName;
	}
	public void setMaName(String maName)
	{
		this.maName = maName;
	}
	public String getMaInfo()
	{
		return maInfo;
	}
	public void setMaInfo(String maInfo)
	{
		this.maInfo = maInfo;
	}
	public String getMaAcname()
	{
		return maAcname;
	}
	public void setMaAcname(String maAcname)
	{
		this.maAcname = maAcname;
	}
	public String getMaBank()
	{
		return maBank;
	}
	public void setMaBank(String maBank)
	{
		this.maBank = maBank;
	}
	public String getMaAccount()
	{
		return maAccount;
	}
	public void setMaAccount(String maAccount)
	{
		this.maAccount = maAccount;
	}
	public String getMaDate()
	{
		return maDate;
	}
	public void setMaDate(String maDate)
	{
		this.maDate = maDate;
	}
	public int getMaPeriod()
	{
		return maPeriod;
	}
	public void setMaPeriod(int maPeriod)
	{
		this.maPeriod = maPeriod;
	}
	public String getMaPredict()
	{
		return maPredict;
	}
	public void setMaPredict(String maPredict)
	{
		this.maPredict = maPredict;
	}
	
	
	
}
