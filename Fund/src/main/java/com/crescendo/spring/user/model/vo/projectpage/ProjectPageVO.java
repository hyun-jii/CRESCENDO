package com.crescendo.spring.user.model.vo.projectpage;

public class ProjectPageVO
{
	private int userNum;							// 유저번호  
	private String userName, userEmail;				// 닉네임, 이메일
	private int fNum, reNum;						// 후원번호, 리워드번호
	private String fName, fAddr, fTel, fInquire;	// 후원자이름, 주소, 전화번호, 요청사항
	private int fCount;								// 리워드선택수량
	private int prNum, prCard, prBirth, prPw;		// 결제번호, 카드번호, 생년월일, 카드비밀번호
	private String prExpire, prDate, prKey;			// 유효기간, 결제날짜, 빌링키
	private int poNum;								// 결제완료번호
	private String poDate, poSta;					// 결제완료날짜, 결제상태
	private String poMoney;							// 결제금액
	private int caNum;								// 카테고리번호
	private String caName;							// 카테고리이름
	private Integer prjNum;								// 프로젝트번호
	private String prjTitle, prjSname;				// 프로젝트제목, 프로젝트요약
	private int prjGoal;							// 프로젝트 목표금액
	private String prjImg, prjTag, prjContent;		// 대표이미지, 태그, 내용
	private String reName, reContent;				// 리워드이름, 리워드내용
	private int reMoney, reLimit;					// 리워드가격, 리워드제한수량
	private int maNum;								// 창작자번호
	private String maName, maInfo;					// 창작자이름, 창작자 정보
	private int maPeriod;							// 프로젝트 진행기간
	private String maPredict;						// 배송예상날짜
	private int finalNum;							// 최종등록번호
	private String finalSta, finalDate;				// 최종등록상태, 등록날짜
	private int proNum;								// 승인된 프로젝트 번호
	private String proSta, proShip, proFinish;		// 프로젝트 상태, 배송상태, 배송완료날짜
	private int remainDay, finalDay;				// 프로젝트 남은기간, 마감일
	private String percent;							// 프로젝트 달성률
	private int totalMoney, supporter;				// 프로젝트 총 후원금액, 총 후원자수
	private int appNum;
	
	// getter / setter
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
	public int getfNum()
	{
		return fNum;
	}
	public void setfNum(int fNum)
	{
		this.fNum = fNum;
	}
	public int getReNum()
	{
		return reNum;
	}
	public void setReNum(int reNum)
	{
		this.reNum = reNum;
	}
	public String getfName()
	{
		return fName;
	}
	public void setfName(String fName)
	{
		this.fName = fName;
	}
	public String getfAddr()
	{
		return fAddr;
	}
	public void setfAddr(String fAddr)
	{
		this.fAddr = fAddr;
	}
	public String getfTel()
	{
		return fTel;
	}
	public void setfTel(String fTel)
	{
		this.fTel = fTel;
	}
	public String getfInquire()
	{
		return fInquire;
	}
	public void setfInquire(String fInquire)
	{
		this.fInquire = fInquire;
	}
	public int getfCount()
	{
		return fCount;
	}
	public void setfCount(int fCount)
	{
		this.fCount = fCount;
	}
	public int getPrNum()
	{
		return prNum;
	}
	public void setPrNum(int prNum)
	{
		this.prNum = prNum;
	}
	public int getPrCard()
	{
		return prCard;
	}
	public void setPrCard(int prCard)
	{
		this.prCard = prCard;
	}
	public int getPrBirth()
	{
		return prBirth;
	}
	public void setPrBirth(int prBirth)
	{
		this.prBirth = prBirth;
	}
	public int getPrPw()
	{
		return prPw;
	}
	public void setPrPw(int prPw)
	{
		this.prPw = prPw;
	}
	public String getPrExpire()
	{
		return prExpire;
	}
	public void setPrExpire(String prExpire)
	{
		this.prExpire = prExpire;
	}
	public String getPrDate()
	{
		return prDate;
	}
	public void setPrDate(String prDate)
	{
		this.prDate = prDate;
	}
	public String getPrKey()
	{
		return prKey;
	}
	public void setPrKey(String prKey)
	{
		this.prKey = prKey;
	}
	public int getPoNum()
	{
		return poNum;
	}
	public void setPoNum(int poNum)
	{
		this.poNum = poNum;
	}
	public String getPoDate()
	{
		return poDate;
	}
	public void setPoDate(String poDate)
	{
		this.poDate = poDate;
	}
	public String getPoSta()
	{
		return poSta;
	}
	public void setPoSta(String poSta)
	{
		this.poSta = poSta;
	}
	public String getPoMoney()
	{
		return poMoney;
	}
	public void setPoMoney(String poMoney)
	{
		this.poMoney = poMoney;
	}
	public int getCaNum()
	{
		return caNum;
	}
	public void setCaNum(int caNum)
	{
		this.caNum = caNum;
	}
	public String getCaName()
	{
		return caName;
	}
	public void setCaName(String caName)
	{
		this.caName = caName;
	}
	public Integer getPrjNum()
	{
		return prjNum;
	}
	public void setPrjNum(Integer prjNum)
	{
		this.prjNum = prjNum;
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
	public int getPrjGoal()
	{
		return prjGoal;
	}
	public void setPrjGoal(int prjGoal)
	{
		this.prjGoal = prjGoal;
	}
	public String getPrjImg()
	{
		return prjImg;
	}
	public void setPrjImg(String prjImg)
	{
		this.prjImg = prjImg;
	}
	public String getPrjTag()
	{
		return prjTag;
	}
	public void setPrjTag(String prjTag)
	{
		this.prjTag = prjTag;
	}
	public String getPrjContent()
	{
		return prjContent;
	}
	public void setPrjContent(String prjContent)
	{
		this.prjContent = prjContent;
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
	public int getMaNum()
	{
		return maNum;
	}
	public void setMaNum(int maNum)
	{
		this.maNum = maNum;
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
	public int getFinalNum()
	{
		return finalNum;
	}
	public void setFinalNum(int finalNum)
	{
		this.finalNum = finalNum;
	}
	public String getFinalSta()
	{
		return finalSta;
	}
	public void setFinalSta(String finalSta)
	{
		this.finalSta = finalSta;
	}
	public String getFinalDate()
	{
		return finalDate;
	}
	public void setFinalDate(String finalDate)
	{
		this.finalDate = finalDate;
	}
	public int getProNum()
	{
		return proNum;
	}
	public void setProNum(int proNum)
	{
		this.proNum = proNum;
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
	public int getRemainDay()
	{
		return remainDay;
	}
	public void setRemainDay(int remainDay)
	{
		this.remainDay = remainDay;
	}
	public int getFinalDay()
	{
		return finalDay;
	}
	public void setFinalDay(int finalDay)
	{
		this.finalDay = finalDay;
	}
	public String getPercent()
	{
		return percent;
	}
	public void setPercent(String percent)
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
	public int getAppNum()
	{
		return appNum;
	}
	public void setAppNum(int appNum)
	{
		this.appNum = appNum;
	}
	
	
	
	
}
