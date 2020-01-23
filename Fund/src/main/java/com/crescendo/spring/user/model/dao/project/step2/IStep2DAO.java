package com.crescendo.spring.user.model.dao.project.step2;

import java.util.List;

import com.crescendo.spring.admin.model.vo.category.CategoryVO;

import com.crescendo.spring.user.model.vo.project.step2.Step2VO;

public interface IStep2DAO
{
	// 카테고리 List출력
	public List<CategoryVO> categoryView() throws Exception;

	// 임시저장 버튼 누룰때
	public int extraProject(Step2VO vo) throws Exception;

	// step3에서 뒤로가기 눌렀을 경우
	public Step2VO backStep2(int m) throws Exception;
	
	// 뒤로간 step2에서 update일어나기
	public Step2VO updateUpload(int m) throws Exception;
}
