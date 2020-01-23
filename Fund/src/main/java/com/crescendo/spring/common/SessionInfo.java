/*================================
 		SessionInfo.java
 		- 세션 저장
 =================================*/
package com.crescendo.spring.common;

public class SessionInfo
{
	// 세션 정보 저장을 위한 유저 이메일, 이름
	private String userEmail, userName;
	private int userNum;
	private String userProfile;
	
	public String getUserProfile() {
		return userProfile;
	}
	public void setUserProfile(String userProfile) {
		this.userProfile = userProfile;
	}
	// getter / setter 
	public String getUserEmail()
	{
		return userEmail;
	}
	public void setUserEmail(String userEmail)
	{
		this.userEmail = userEmail;
	}
	public String getUserName()
	{
		return userName;
	}
	public void setUserName(String userName)
	{
		this.userName = userName;
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