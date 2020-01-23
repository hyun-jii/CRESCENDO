package com.crescendo.spring.user.model.dao.project.step4;

import com.crescendo.spring.user.model.vo.project.step4.Step4VO;
import com.crescendo.spring.user.model.vo.projectpage.ProjectPageVO;

public interface IStep4DAO
{

	// 창작자 정보 insert
	public int insertMaker(Step4VO vo) throws Exception;
	

	//해당 프로젝트의 검사해야할 요소들 조회
	public  ProjectPageVO checkform(int prjNum)throws Exception;
	
	//최종등록 테이블에 insert된 ma_num 값 얻어오기
	public Step4VO step4get(int prjNum)throws Exception;
	

	//APP평가 테이블로 insert (조건 만족 X )
	public int appinsert(int maNum)throws Exception;
	
	//APP평가 테이블로 insert (조건 만족 O )
	public int sappinsert(int maNum)throws Exception;
	
	
	
}
