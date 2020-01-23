package com.crescendo.spring.user.model.dao.mypagetemp;

import java.util.List;

import com.crescendo.spring.user.model.vo.mypagetemp.MypageTempVO;

public interface IMypageTempDAO
{
	// 임시저장 목록 출력
	public List<MypageTempVO> mypageTempList(int userNum) throws Exception;
	
	// 임시저장 갯수 출력
	public int mypageTempCount(int userNum) throws Exception;
	
	// reNum 찾기
	public int searchStep(int prjNum) throws Exception;
	
	// 임시저장프로젝트 삭제
	public int mypageTempDelete(int prjNum) throws Exception;
}
