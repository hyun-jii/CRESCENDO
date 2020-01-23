package com.crescendo.spring.admin.model.vo.charge;

public class ChargeVO
{

	private int chaNum, adminNum;  //수수료정책번호, 관리자번호
	private String chaDate, chaContent; //수정날짜, 수수료정책내용
	public int getChaNum() {
		return chaNum;
	}
	public void setChaNum(int chaNum) {
		this.chaNum = chaNum;
	}
	public int getAdminNum() {
		return adminNum;
	}
	public void setAdminNum(int adminNum) {
		this.adminNum = adminNum;
	}
	public String getChaDate() {
		return chaDate;
	}
	public void setChaDate(String chaDate) {
		this.chaDate = chaDate;
	}
	public String getChaContent() {
		return chaContent;
	}
	public void setChaContent(String chaContent) {
		this.chaContent = chaContent;
	}
}

