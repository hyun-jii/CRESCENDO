package com.crescendo.spring.admin.model.dao.admintotalmoney;



public interface IAdminTotalMoneyDAO
{
	// 관리자 총수익
	public Integer adminTotalMoney() throws Exception;
	
	// 관리자 월별 수익
	public Integer monthTotalMoney(String day) throws Exception;
	
	// 관리자 연도별 수익
	public Integer yearTotalMoney(String year) throws Exception;

}
