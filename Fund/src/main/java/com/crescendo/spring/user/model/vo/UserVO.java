/*=============================
 		UserVO.java
 ==============================*/
package com.crescendo.spring.user.model.vo;


public class UserVO
{
	private int userNum;						// 번호
	private String userName, userPw, userEmail;	// 닉네임, 비밀번호, 이메일
	private String userInDate;					// 가입날짜
	private String userProfile;		// 프로필
	private String userAddr, userTel, zipCode,userEmailNum;	// 주소, 전화번호, 우편번호
	
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
	public String getUserPw()
	{
		return userPw;
	}
	public void setUserPw(String userPw)
	{
		this.userPw = userPw;
	}
	public String getUserEmail()
	{
		return userEmail;
	}
	public void setUserEmail(String userEmail)
	{
		this.userEmail = userEmail;
	}
	public String getUserInDate()
	{
		return userInDate;
	}
	public void setUserInDate(String userInDate)
	{
		this.userInDate = userInDate;
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
	public String getZipCode()
	{
		return zipCode;
	}
	public void setZipCode(String zipCode)
	{
		this.zipCode = zipCode;
	}
	public String getUserEmailNum()
	{
		return userEmailNum;
	}
	public void setUserEmailNum(String userEmailNum)
	{
		this.userEmailNum = userEmailNum;
	}
	
}