/*===============================
 	IPayOkDAO.java
=================================*/
package com.crescendo.spring.admin.model.dao.payok;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.crescendo.spring.admin.model.vo.payok.PayOkVO;

public interface IPayOkDAO
{
	//출력구문
	public List<PayOkVO> payOkList() throws Exception;

	
	//insert할 메소드
	public int insertPayOk(PayOkVO vo) throws Exception;
	
	//update할 메소드
	public int updatePayOk(PayOkVO vo) throws Exception;
	
	//관리자 메인 > 결제현황카운트
	public int payOkCount() throws Exception;
	
	// 결제 완료 확인 내역
	public PayOkVO confirmPay(int prNum) throws Exception;
}
