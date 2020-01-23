/*============================
 	IPayBackDAO.java
=============================*/

package com.crescendo.spring.admin.model.dao.payback;

import java.util.List;



import com.crescendo.spring.admin.model.vo.payback.PayBackVO;


public interface IPayBackDAO
{
	// 결제취소 리스트	
	public List<PayBackVO> payBackList() throws Exception;
	
	// 관리자메인 > 결제취소현황 카운트
	public int payBackCount() throws Exception;
	
	//만든프로젝트 후원자리스트 결제취소
	public int canclePay(int poNum) throws Exception;
	
	
		
}
