package com.crescendo.spring.user.model.dao.project.step3;

import java.util.List;

import com.crescendo.spring.user.model.vo.project.step3.Step3VO;

public interface IStep3DAO
{
	// 리워드 인서트 부분
	public int rewardInsert(Step3VO vo) throws Exception;
	
	// 리워드 리스트 출력
	public List<Step3VO> rewardList(int num) throws Exception;
	
	// 리워드 삭제
	public int rewardDelete(int num) throws Exception;
	
	// 리워드 카운트
	public int rewardCount(int num) throws Exception;
}