package com.crescendo.spring.admin.model.dao.charge;

import java.util.List;

import com.crescendo.spring.admin.model.vo.charge.ChargeVO;
import com.crescendo.spring.admin.model.vo.person.PersonVO;
import com.crescendo.spring.admin.model.vo.promise.AdminPromiseVO;

public interface IChargeDAO
{
	//관리자페이지(수수료 정책 출력)
	public List<ChargeVO> chargeList() throws Exception;
	
	//관리자페이지(개인정보 처리방침 출력)
    public List<PersonVO> personList() throws Exception; 
    
    // 이용약관 목록 출력
 	public List<AdminPromiseVO> promiseList() throws Exception;
 	
 	
 	
	
 	//관리자페이지(수수료 정책 수정 폼)
	public ChargeVO chargeUpdateForm(int chaNum) throws Exception;
	
	//관리자페이지(개인정보 처리방침 수정폼)
	public PersonVO  personUpdateForm(int pNum) throws Exception;
	
	// 이용약관 수정폼에 데이터 보내기
	public AdminPromiseVO promiseUpdateForm(int proNum) throws Exception;

		
	
	//관리자페이지(수수료 정책  수정)
	public int chargeUpdate(ChargeVO c) throws Exception;
	
	//관리자페이지(개인정보 처리방침 수정)
	public int personUpdate(PersonVO person) throws Exception;
	
	// 이용약관 수정
	public int promiseUpdate(AdminPromiseVO pro) throws Exception;


     
  
 	
}
