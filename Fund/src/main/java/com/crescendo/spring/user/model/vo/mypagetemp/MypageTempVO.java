package com.crescendo.spring.user.model.vo.mypagetemp;

public class MypageTempVO
{

	private int userNum;										//유저번호
	private String userName, userEmail, userIndate;				//유저이름, 유저메일, 유저가입일
	private String userProfile, userAddr, userTel; 				// 유저 프로필, 유저 주소, 유저 전화번호
	private int prjNum, caNum;									//프로젝트번호,카테고리번호
	private String prjTitle, prjSname, prjImg, prjContent;		//프로젝트제목, 프로젝트요약, 대표이미지, 프로젝트내용
	private int prjGoal, adminNum;								// 목표금액, 관리자번호
	private String prjDate, caName, caDate; 					//등록날짜, 카테고리이름,카테고리 등록일자
	private int reNum, reMoney, reLimit; 						//리워드 번호, 리워드금액, 리워드제한수량
	private String reName, reContent, reDate;					// 리워드이름, 리워드 내용, 리워드등록날짜
	private int maNum, maPeriod;								//최종접수번호, 진행기간
	private String maName, maInfo, maAcname, maBank, maAccount;	// 창작자이름,창작자소개,예금주,은행,계좌번호
	private String maDate, maPredict;							// 최종접수일자, 배송예정일
	
	// getter / setter 구성
	public int getUserNum()
	{
		return userNum;
	}
	public void setUserNum(int userNum)
	{
		this.userNum = userNum;
	}
	public String getUserName()
	{
		return userName;
	}
	public void setUserName(String userName)
	{
		this.userName = userName;
	}
	public String getUserEmail()
	{
		return userEmail;
	}
	public void setUserEmail(String userEmail)
	{
		this.userEmail = userEmail;
	}
	public String getUserIndate()
	{
		return userIndate;
	}
	public void setUserIndate(String userIndate)
	{
		this.userIndate = userIndate;
	}
	public String getUserProfile()
	{
		return userProfile;
	}
	public void setUserProfile(String userProfile)
	{
		this.userProfile = userProfile;
	}
	public String getUserAddr()
	{
		return userAddr;
	}
	public void setUserAddr(String userAddr)
	{
		this.userAddr = userAddr;
	}
	public String getUserTel()
	{
		return userTel;
	}
	public void setUserTel(String userTel)
	{
		this.userTel = userTel;
	}
	public int getPrjNum()
	{
		return prjNum;
	}
	public void setPrjNum(int prjNum)
	{
		this.prjNum = prjNum;
	}
	public int getCaNum()
	{
		return caNum;
	}
	public void setCaNum(int caNum)
	{
		this.caNum = caNum;
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
	public String getPrjImg()
	{
		return prjImg;
	}
	public void setPrjImg(String prjImg)
	{
		this.prjImg = prjImg;
	}
	public String getPrjContent()
	{
		return prjContent;
	}
	public void setPrjContent(String prjContent)
	{
		this.prjContent = prjContent;
	}
	public int getPrjGoal()
	{
		return prjGoal;
	}
	public void setPrjGoal(int prjGoal)
	{
		this.prjGoal = prjGoal;
	}
	public int getAdminNum()
	{
		return adminNum;
	}
	public void setAdminNum(int adminNum)
	{
		this.adminNum = adminNum;
	}
	public String getPrjDate()
	{
		return prjDate;
	}
	public void setPrjDate(String prjDate)
	{
		this.prjDate = prjDate;
	}
	public String getCaName()
	{
		return caName;
	}
	public void setCaName(String caName)
	{
		this.caName = caName;
	}
	public String getCaDate()
	{
		return caDate;
	}
	public void setCaDate(String caDate)
	{
		this.caDate = caDate;
	}
	public int getReNum()
	{
		return reNum;
	}
	public void setReNum(int reNum)
	{
		this.reNum = reNum;
	}
	public int getReMoney()
	{
		return reMoney;
	}
	public void setReMoney(int reMoney)
	{
		this.reMoney = reMoney;
	}
	public int getReLimit()
	{
		return reLimit;
	}
	public void setReLimit(int reLimit)
	{
		this.reLimit = reLimit;
	}
	public String getReName()
	{
		return reName;
	}
	public void setReName(String reName)
	{
		this.reName = reName;
	}
	public String getReContent()
	{
		return reContent;
	}
	public void setReContent(String reContent)
	{
		this.reContent = reContent;
	}
	public String getReDate()
	{
		return reDate;
	}
	public void setReDate(String reDate)
	{
		this.reDate = reDate;
	}
	public int getMaNum()
	{
		return maNum;
	}
	public void setMaNum(int maNum)
	{
		this.maNum = maNum;
	}
	public int getMaPeriod()
	{
		return maPeriod;
	}
	public void setMaPeriod(int maPeriod)
	{
		this.maPeriod = maPeriod;
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
	public String getMaPredict()
	{
		return maPredict;
	}
	public void setMaPredict(String maPredict)
	{
		this.maPredict = maPredict;
	}
	
	
	
	
	
	
}
