package com.crescendo.spring.user.model.dao.projectpage.detail;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.crescendo.spring.user.model.vo.projectpage.ProjectPageVO;

public interface IProjectDetailDAO
{
	// 프로젝트별 세부 페이지
	public List<ProjectPageVO> projectDetail(int proNum) throws Exception; 
	
	// 승인대기 프로젝트별 세부 페이지
	public List<ProjectPageVO> projectDetail2(int appNum) throws Exception;
	
	// 창작자에게 쪽지보내기(보낸이 편지함 INSERT)


	
	// 후원하기 리워드 구성(초롱)
	public List<ProjectPageVO> fundList(int proNum) throws Exception;
	
	// 결제입력창 후원자가 선택한 리워드 구성 (초롱)
	public List<ProjectPageVO> rewardList(@Param("proNum") int proNum, @Param("reNum") int reNum) throws Exception;
	

} 

