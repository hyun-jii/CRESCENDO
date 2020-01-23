package com.crescendo.spring.user.model.dao.make;

import java.util.List;

import org.apache.ibatis.annotations.Param;


import com.crescendo.spring.user.model.vo.make.MakeVO;

public interface IMakeDAO
{
	//만든프로젝트 출력
	public List<MakeVO> makeList(int userNum) throws Exception;
	
	//승인프로젝트 출력
	public List<MakeVO> allowList(int userNum) throws Exception;
		
	//거절프로젝트 출력
	public List<MakeVO> refuseList(int userNum) throws Exception;
	
	//후원자리스트 출력
	public List<MakeVO> supporterList(@Param("userNum") int userNum, @Param("proNum") int proNum, @Param("prjTitle") String prjTitle) throws Exception;
	
	//만든프로젝트 총 개수 출력
	public int makeCount(int userNum) throws Exception;
	
	//승인프로젝트 총 개수 출력
	public int allowCount(int userNum) throws Exception;
	
	//거절프로젝트 총 개수 출력
	public int refuseCount(int userNum) throws Exception;
	

	//만든프로젝트 승인대기 프로젝트 출력
	public List<MakeVO> waitList(int userNum) throws Exception;
	
    //만든프로젝트 승인대기 프로젝트 개수
	public int waitCount(int userNum) throws Exception;
	
	//만든프로젝트 배송상태 완료로 업데이트 
	public int postStateUpdate(int proNum) throws Exception;

	//창작자 페이지 만든 프로젝트 개수
	public int makerCount(int userNum) throws Exception;


}

