package com.crescendo.spring.user.model.dao.payrequest;

import com.crescendo.spring.user.model.vo.payrequest.PayRequestVO;

public interface IPayRequestDAO 
{
	// 결제 정보 insert
	public int creditInfoInsert(PayRequestVO p);
}
